const express = require('express');
const config = require('config');
const { Pool } = require('pg'); // Importiert das Pool-Modul aus dem pg-Paket

// Konfiguriert den Pool mit den Daten aus der .env-Datei
const pool = new Pool({
  user: config.get('pg.username'),
  host: config.get('pg.host'),
  database: config.get('pg.database'),
  password: config.get('pg.password'),
  port: config.get('pg.port'),
});

const app = express();

app.get('/', (req, res) => {
  res.send('Hallo Welt!');
});

// Beispielroute, um Datenbankanfragen zu testen
app.get('/testdb', async (req, res) => {
  try {
    const dbRes = await pool.query('SELECT NOW()');
    res.json(dbRes.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
});

app.get('/skills', async (req, res) => {
  try {
    const queryResult = await pool.query('SELECT * FROM skills');
    res.json(queryResult.rows);
  } catch (err) {
    console.error(err);
    console.error(err.message);
    res.send("error :/")
    res.status(500).send('Ein Fehler ist aufgetreten');
  }
});

app.get('/professions', async (req, res) => {
  try {
    const queryResult = await pool.query('SELECT * FROM professions');
    res.json(queryResult.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send('Ein Fehler ist aufgetreten');
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server läuft auf Port ${PORT}`);
});
