const { Client } = require('pg');
const fs = require('fs');
require('dotenv').config();

async function migrate() {
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

    // Read the SQLite dump file
    const sql = fs.readFileSync('sqlite_dump.sql', 'utf8');
    
    // Convert SQLite to PostgreSQL syntax
    let pgSql = sql
      .replace(/`/g, '"')
      .replace(/INTEGER\s+PRIMARY\s+KEY\s+AUTOINCREMENT/g, 'SERIAL PRIMARY KEY')
      .replace(/AUTOINCREMENT/g, '')
      .replace(/DATETIME/g, 'TIMESTAMP')
      .replace(/TEXT([,\s)])/g, 'TEXT$1')
      .replace(/BOOLEAN/g, 'BOOLEAN')
      .replace(/DEFAULT '([^']*)'/g, (match, p1) => {
        // Handle default values
        if (p1 === 'true') return 'DEFAULT true';
        if (p1 === 'false') return 'DEFAULT false';
        if (p1 === 'NULL') return 'DEFAULT NULL';
        return match;
      });

    // Split into individual statements and execute them
    const statements = pgSql.split(';').filter(statement => statement.trim() !== '');
    
    for (const statement of statements) {
      try {
        await client.query(statement);
      } catch (error) {
        console.error('Error executing statement:', error.message);
        console.error('Statement:', statement);
        // Continue with next statement
      }
    }
    
    console.log('Migration completed successfully!');
  } catch (error) {
    console.error('Migration failed:', error);
  } finally {
    await client.end();
  }
}

migrate();
