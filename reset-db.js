const { Client } = require('pg');
require('dotenv').config();

const client = new Client({
  host: process.env.DATABASE_HOST,
  port: process.env.DATABASE_PORT,
  user: process.env.DATABASE_USERNAME,
  password: process.env.DATABASE_PASSWORD,
  database: 'postgres', // Connect to default postgres database to drop/create our database
  ssl: process.env.DATABASE_SSL === 'true' ? { rejectUnauthorized: false } : false
});

async function resetDatabase() {
  try {
    await client.connect();
    console.log('Connected to PostgreSQL server');

    // Terminate all connections to the database
    await client.query(`
      SELECT pg_terminate_backend(pg_stat_activity.pid)
      FROM pg_stat_activity
      WHERE pg_stat_activity.datname = $1
      AND pid <> pg_backend_pid();
    `, [process.env.DATABASE_NAME]);
    
    // Drop the database if it exists
    await client.query(`DROP DATABASE IF EXISTS ${process.env.DATABASE_NAME}`);
    console.log(`Dropped database ${process.env.DATABASE_NAME}`);
    
    // Create a new database
    await client.query(`CREATE DATABASE ${process.env.DATABASE_NAME}`);
    console.log(`Created database ${process.env.DATABASE_NAME}`);
    
    console.log('Database reset successful!');
  } catch (error) {
    console.error('Error resetting database:', error);
    process.exit(1);
  } finally {
    await client.end();
  }
}

resetDatabase();
