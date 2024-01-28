require('dotenv').config(); // Lädt Umgebungsvariablen aus der .env-Datei

const express = require('express');
const { Pool } = require('pg'); // Importiert das Pool-Modul aus dem pg-Paket

// Konfiguriert den Pool mit den Daten aus der .env-Datei
const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_DATABASE,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
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
