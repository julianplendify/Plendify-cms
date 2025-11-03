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

    // First, let's see what tables we have and their structure
    const tablesRes = await client.query(`
      SELECT table_name 
      FROM information_schema.tables 
      WHERE table_schema = 'public'
      ORDER BY table_name
    `);
    
    console.log('\nAvailable tables:');
    for (const table of tablesRes.rows) {
      const columnsRes = await client.query(`
        SELECT column_name, data_type 
        FROM information_schema.columns 
        WHERE table_name = $1 
        ORDER BY ordinal_position
      `, [table.table_name]);
      
      console.log(`\nTable: ${table.table_name}`);
      console.table(columnsRes.rows);
      
      // Try to get a sample of data from the table
      try {
        const sampleData = await client.query(`
          SELECT * FROM "${table.table_name}" LIMIT 2
        `);
        console.log(`Sample data (first 2 rows):`);
        console.table(sampleData.rows);
      } catch (error) {
        console.log(`Could not fetch sample data: ${error.message}`);
      }
    }
    
  } catch (error) {
    console.error('Error checking database:', error);
  } finally {
    await client.end();
  }
}

checkData();
