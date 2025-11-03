const { Client } = require('pg');
const fs = require('fs');
require('dotenv').config();

async function importData() {
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

    // Read the SQL file
    const sql = fs.readFileSync('/Users/apple/Downloads/data.sql', 'utf8');
    
    // Split into individual statements and execute them
    const statements = sql.split(';').filter(statement => statement.trim() !== '');
    
    for (const statement of statements) {
      try {
        if (statement.trim().toLowerCase().startsWith('insert into') || 
            statement.trim().toLowerCase().startsWith('update') ||
            statement.trim().toLowerCase().startsWith('alter table')) {
          await client.query(statement);
          console.log('Executed statement successfully');
        }
      } catch (error) {
        console.error('Error executing statement:', error.message);
        console.error('Statement:', statement.substring(0, 200) + '...');
        // Continue with next statement
      }
    }
    
    console.log('Data import completed!');
  } catch (error) {
    console.error('Import failed:', error);
  } finally {
    await client.end();
  }
}

importData();
