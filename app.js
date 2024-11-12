const express = require('express');

const app = express();

const db = require('./db');
const response = require('./response');

const port = 3000;


app.get('/data', (req, res) => {
  const sql = 'SELECT * FROM data';

  db.query(sql, (error, result) => {
    if (result) {
      response(200, result, res);
    } else {
      res.json(422, error.message);
    }
  });
});

app.get('/submit', (req, res) => {
  if (req.query.api_key === 'my_secret_password') {
    const sql = `INSERT INTO data (temperature, humidity, brightness) VALUES (${req.query.temperature}, ${req.query.humidity}, ${req.query.ldr})`;

    db.query(sql, (error, result) => {
      if (result) {
        response(200, result, res);
      } else {
        res.json(422, { error: error.message });
      }
    });
  } else {
    res.json(401, { error: 'API Key tidak sesuai.' });
  }
});

app.listen(port, () => {
  console.log(`App is listening to port ${port}`);
});
