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

    // Get list of tables in the database
    const tablesRes = await client.query(`
      SELECT table_name 
      FROM information_schema.tables 
      WHERE table_schema = 'public'
    `);
    
    const tables = tablesRes.rows.map(row => row.table_name);
    console.log('Found tables:', tables);
    
    // For each table, check if it exists in the SQL file and import data
    for (const table of tables) {
      try {
        // Read the SQL file from current directory
        const sql = fs.readFileSync('./data.sql', 'utf8');
        
        // Find INSERT statements for this table
        const insertRegex = new RegExp(`INSERT INTO "?${table}"?\s*\([^)]+\)\s*VALUES\s*(\([^;]+\)(?:\s*,\s*\([^;]+\))*)`, 'gi');
        const matches = [...sql.matchAll(insertRegex)];
        
        if (matches.length > 0) {
          console.log(`\nFound ${matches.length} INSERT statements for table ${table}`);
          
          // Execute each INSERT statement
          for (const match of matches) {
            const insertStatement = `INSERT INTO "${table}" VALUES ${match[1]}`;
            try {
              await client.query(insertStatement);
              console.log(`Inserted data into ${table}`);
            } catch (error) {
              console.error(`Error inserting into ${table}:`, error.message);
            }
          }
        }
      } catch (error) {
        console.error(`Error processing table ${table}:`, error.message);
      }
    }
    
    console.log('\nData import completed!');
  } catch (error) {
    console.error('Import failed:', error);
  } finally {
    await client.end();
  }
}

importData();
