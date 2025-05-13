const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'Escolar',
  password: 'Keeper2003',
  port: 5432
});

module.exports = pool;