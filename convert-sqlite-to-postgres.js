const fs = require('fs');
const { Client } = require('pg');
require('dotenv').config();

async function convertAndImport() {
  // Read the SQLite dump file
  const sqliteDump = fs.readFileSync('./complete_dump.sql', 'utf8');
  
  // Convert SQLite specific syntax to PostgreSQL
  let pgSql = sqliteDump
    // Replace SQLite specific data types and syntax
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

  // Connect to PostgreSQL
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

    // Split into individual statements and execute them
    const statements = pgSql.split(';').filter(statement => statement.trim() !== '');
    
    for (let i = 0; i < statements.length; i++) {
      const statement = statements[i].trim();
      if (!statement) continue;
      
      try {
        console.log(`Executing statement ${i + 1}/${statements.length}`);
        await client.query(statement);
      } catch (error) {
        console.error(`Error executing statement ${i + 1}:`, error.message);
        console.error('Statement:', statement.substring(0, 200) + '...');
        // Continue with next statement
      }
    }
    
    console.log('Database import completed!');
  } catch (error) {
    console.error('Import failed:', error);
  } finally {
    await client.end();
  }
}

convertAndImport();
