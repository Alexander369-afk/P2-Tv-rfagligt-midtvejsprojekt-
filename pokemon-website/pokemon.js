require('dotenv').config({ path: './pokemon-website/.env' });
console.log("Bruger:", process.env.DB_USER);
console.log("Adgangskode fundet:", !!process.env.DB_PASSWORD);
const express = require('express');
const cors = require('cors');
const db = require('mysql2');

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

const connection = db.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});

// Hent alle Pokemon
app.get('/all', (req, res) => {
    connection.query("SELECT * FROM pokemon", (error, results) => {

        if (error) {
            return res.status(500).send(error);
        }

        res.send(results);
    });
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});

d