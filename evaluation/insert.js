const csv = require('csv-parser');
const fs = require('fs');
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'prototype',
    password: 'liverpool',
    database: 'exoplanets'
});
connection.connect();
const queries = [];


let noOfRows = 0;
const stream = fs.createReadStream('../datasets/PS_2020.11.23_01.56.29.csv');

console.log('Flushing table');
connection.query('TRUNCATE PLANETS', () => {
    console.log('Reading csv');

    stream.pipe(csv({ skipComments: true }))
        .on('data', (record) => {
            const promise = new Promise((resolve, reject) => {
                connection.query('INSERT INTO PLANETS SET ?', record, (err) => {
                    if (err) {
                        reject(err);
                        return;
                    }
                    noOfRows++;
                    resolve();
                });
            });
            queries.push(promise);
        })
        .on('finish', handleStreamClose);
});

const handleStreamClose = async () => {
    await Promise.all(queries);
    connection.destroy();
    console.log(`End - Inserted ${noOfRows} records.`);
}
