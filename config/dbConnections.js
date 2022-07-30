const mysql = require('mysql2');
require('dotenv').config();

const dbConnect = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: process.env.DB_PW,
        database: 'company_db'
    }
);

dbConnect.connect((err) => err ? console.log(err) : console.log(''));

module.exports = dbConnect;