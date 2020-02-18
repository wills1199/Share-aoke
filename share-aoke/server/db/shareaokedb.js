const mysql = require('mysql');
// const axios = require('axios');

const DB_HOST = 'localhost';
const DB_USER = 'root';
const DB_PASS = '';
const DB_NAME = 'shareaoke';

const connection = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASS,
  database: DB_NAME,
});

connection.connect((err) => {
  if (err) {
    console.log('Error DB not connected ', err.message);
    return;
  }
  console.log('DB is connected!');
});
