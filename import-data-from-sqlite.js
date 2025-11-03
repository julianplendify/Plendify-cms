const sqlite3 = require('sqlite3').verbose();
const { Client } = require('pg');
const fs = require('fs');
require('dotenv').config();

// Helper function to convert SQLite date to PostgreSQL timestamp
function convertDate(sqliteDate) {
  if (!sqliteDate) return null;
  // If it's a timestamp in milliseconds
  if (typeof sqliteDate === 'number' && sqliteDate > 1000000000000) {
    return new Date(Number(sqliteDate)).toISOString();
  }
  // If it's already a date string
  return sqliteDate;
}

async function importData() {
  // Connect to SQLite
  const sqliteDb = new sqlite3.Database('.tmp/data.db', sqlite3.OPEN_READONLY, (err) => {
    if (err) {
      console.error('Error opening SQLite database:', err);
      return;
    }
    console.log('Connected to SQLite database');
  });

  // Connect to PostgreSQL
  const pgClient = new Client({
    host: process.env.DATABASE_HOST,
    port: process.env.DATABASE_PORT,
    user: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME,
    ssl: process.env.DATABASE_SSL === 'true' ? { rejectUnauthorized: false } : false
  });

  try {
    await pgClient.connect();
    console.log('Connected to PostgreSQL server');

    // Start a transaction
    await pgClient.query('BEGIN');

    // Import admin users first (needed for foreign keys)
    console.log('Importing admin users...');
    const adminUsers = await new Promise((resolve, reject) => {
      sqliteDb.all('SELECT * FROM admin_users', [], (err, rows) => {
        if (err) reject(err);
        else resolve(rows);
      });
    });

    for (const user of adminUsers) {
      try {
        await pgClient.query(
          `INSERT INTO admin_users (
            id, document_id, firstname, lastname, username, email, password, 
            reset_password_token, registration_token, is_active, blocked, 
            prefered_language, created_at, updated_at, created_by_id, updated_by_id
          ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)
          ON CONFLICT (id) DO NOTHING`,
          [
            user.id, 
            user.document_id, 
            user.firstname || '', 
            user.lastname || '',
            user.username || user.email,
            user.email,
            user.password,
            user.reset_password_token,
            user.registration_token,
            user.is_active !== undefined ? user.is_active : true,
            user.blocked || false,
            user.prefered_language,
            convertDate(user.created_at),
            convertDate(user.updated_at),
            user.created_by_id,
            user.updated_by_id
          ]
        );
        console.log(`Imported admin user: ${user.email}`);
      } catch (error) {
        console.error(`Error importing admin user ${user.id}:`, error.message);
      }
    }

    // Import blogs with proper date handling
    console.log('\nImporting blogs...');
    const blogs = await new Promise((resolve, reject) => {
      sqliteDb.all('SELECT * FROM blogs', [], (err, rows) => {
        if (err) reject(err);
        else resolve(rows);
      });
    });

    for (const blog of blogs) {
      try {
        await pgClient.query(
          `INSERT INTO blogs (
            id, document_id, title, slug, date, intro, 
            conclusion, tags, created_at, updated_at, 
            published_at, created_by_id, updated_by_id, locale, image_url
          ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15)
          ON CONFLICT (id) DO UPDATE SET
            document_id = EXCLUDED.document_id,
            title = EXCLUDED.title,
            slug = EXCLUDED.slug,
            date = EXCLUDED.date,
            intro = EXCLUDED.intro,
            conclusion = EXCLUDED.conclusion,
            tags = EXCLUDED.tags,
            updated_at = EXCLUDED.updated_at,
            published_at = EXCLUDED.published_at,
            updated_by_id = EXCLUDED.updated_by_id,
            locale = EXCLUDED.locale,
            image_url = EXCLUDED.image_url`,
          [
            blog.id, 
            blog.document_id, 
            blog.title, 
            blog.slug, 
            blog.date ? new Date(blog.date).toISOString() : null,
            blog.intro,
            blog.conclusion,
            blog.tags,
            convertDate(blog.created_at),
            convertDate(blog.updated_at),
            convertDate(blog.published_at),
            blog.created_by_id,
            blog.updated_by_id,
            blog.locale || 'en',
            blog.image_url
          ]
        );
        console.log(`Processed blog: ${blog.title}`);
      } catch (error) {
        console.error(`Error processing blog ${blog.id}:`, error.message);
      }
    }

    // Import authors with proper date handling
    console.log('\nImporting authors...');
    const authors = await new Promise((resolve, reject) => {
      sqliteDb.all('SELECT * FROM authors', [], (err, rows) => {
        if (err) reject(err);
        else resolve(rows);
      });
    });

    for (const author of authors) {
      try {
        await pgClient.query(
          `INSERT INTO authors (
            id, document_id, name, bio, created_at, updated_at, 
            published_at, created_by_id, updated_by_id, locale
          ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
          ON CONFLICT (id) DO UPDATE SET
            document_id = EXCLUDED.document_id,
            name = EXCLUDED.name,
            bio = EXCLUDED.bio,
            updated_at = EXCLUDED.updated_at,
            published_at = EXCLUDED.published_at,
            updated_by_id = EXCLUDED.updated_by_id,
            locale = EXCLUDED.locale`,
          [
            author.id,
            author.document_id,
            author.name,
            author.bio,
            convertDate(author.created_at),
            convertDate(author.updated_at),
            convertDate(author.published_at),
            author.created_by_id,
            author.updated_by_id,
            author.locale || 'en'
          ]
        );
        console.log(`Processed author: ${author.name}`);
      } catch (error) {
        console.error(`Error processing author ${author.id}:`, error.message);
      }
    }

    // Import blog-author relationships with conflict handling
    console.log('\nImporting blog-author relationships...');
    const blogAuthors = await new Promise((resolve, reject) => {
      sqliteDb.all('SELECT * FROM blogs_author_lnk', [], (err, rows) => {
        if (err) reject(err);
        else resolve(rows);
      });
    });

    for (const rel of blogAuthors) {
      try {
        // First, check if both the blog and author exist
        const blogExists = await pgClient.query('SELECT 1 FROM blogs WHERE id = $1', [rel.blog_id]);
        const authorExists = await pgClient.query('SELECT 1 FROM authors WHERE id = $1', [rel.author_id]);
        
        if (blogExists.rows.length > 0 && authorExists.rows.length > 0) {
          await pgClient.query(
            `INSERT INTO blogs_author_lnk (id, blog_id, author_id, blog_ord) 
             VALUES ($1, $2, $3, $4)
             ON CONFLICT (id) DO UPDATE SET
               blog_id = EXCLUDED.blog_id,
               author_id = EXCLUDED.author_id,
               blog_ord = EXCLUDED.blog_ord`,
            [rel.id, rel.blog_id, rel.author_id, rel.blog_ord || 0]
          );
          console.log(`Processed relationship: blog ${rel.blog_id} <-> author ${rel.author_id}`);
        } else {
          console.log(`Skipping relationship - blog ${rel.blog_id} or author ${rel.author_id} not found`);
        }
      } catch (error) {
        console.error(`Error processing relationship ${rel.id}:`, error.message);
      }
    }

    // Commit the transaction
    await pgClient.query('COMMIT');
    console.log('\nData import completed successfully!');
  } catch (error) {
    // Rollback in case of error
    await pgClient.query('ROLLBACK');
    console.error('Error during import:', error);
  } finally {
    await pgClient.end();
    sqliteDb.close();
  }
}

// Run the import
importData();
