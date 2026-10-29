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

    const name = req.query.name || "";
    const type = req.query.type || "all";
    const sort = req.query.sort || "";
    const order = req.query.order || "ASC";

    const allowedSort = ["pokedex_number", "hp", "name", "speed", "attack", "defense"];
    const sortColumn = allowedSort.includes(sort) ? sort: "pokedex_number";
    const sortOrder = order === "desc" ? "DESC" : "ASC";


    connection.query("SELECT * FROM pokemon WHERE name LIKE ? AND (?= 'all' or primary_type = ?) ORDER BY " + sortColumn + " " + sortOrder,
        ["%" + name + "%", type, type], (error, results) => {
        if (error) {
            return res.status(500).send(error);
        }

        res.send(results);
    });
});

app.post('/trainer/new', (req, res) => {
    const trainerName = req.body.trainerName;
    const homeTown = req.body.homeTown;
    const trainerAge = req.body.trainerAge;

    connection.query(
        "INSERT INTO trainer (trainer_name, hometown, age) VALUES (?, ?, ?)",
        [trainerName, homeTown, trainerAge],
        (error, result) => {
            if (error) {
                return res.status(500).send(error.message);
            }

            res.send("Ny træner");
        }
    );
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});