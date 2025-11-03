const { Client } = require('pg');
require('dotenv').config();

async function checkData() {
  const client = new Client({
    host: process.env.DATABASE_HOST,
    port: process.env.DATABASE_PORT,
    user: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME,
    ssl: process.env.DATABASE_SSL === 'true' ? { rejectUnauthorized: false } : false
  });

  try {
    await client.connect();
    console.log('Connected to PostgreSQL server');

    // First, check the structure of the blogs table
    const blogColumns = await client.query(`
      SELECT column_name, data_type 
      FROM information_schema.columns 
      WHERE table_name = 'blogs'
    `);
    console.log('\nBlogs table columns:');
    console.table(blogColumns.rows);
    
    // Then get the first 5 blogs with available columns
    const blogs = await client.query('SELECT * FROM blogs LIMIT 5');
    console.log('\nFirst 5 blogs:');
    console.table(blogs.rows);

    // Check authors table structure
    const authorColumns = await client.query(`
      SELECT column_name, data_type 
      FROM information_schema.columns 
      WHERE table_name = 'authors'
    `);
    console.log('\nAuthors table columns:');
    console.table(authorColumns.rows);
    
    // Get first 5 authors with available columns
    const authors = await client.query('SELECT * FROM authors LIMIT 5');
    console.log('\nFirst 5 authors:');
    console.table(authors.rows);

    // Check blog-author relationships
    const blogAuthors = await client.query(`
      SELECT b.title, a.name as author 
      FROM blogs_author_lnk bal
      JOIN blogs b ON bal.blog_id = b.id
      JOIN authors a ON bal.author_id = a.id
      LIMIT 5
    `);
    console.log('\nBlog Authors:');
    console.table(blogAuthors.rows);

  } catch (error) {
    console.error('Error checking data:', error);
  } finally {
    await client.end();
  }
}

checkData();
