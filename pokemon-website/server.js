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

// hent trainer

app.get('/trainer', (req, res) => {

    const type = req.query.type || "all";
    const sort = req.query.sort || "trænerId";
    const order = req.query.order || "ASC";

    const allowedSort = {
        trænerId: "trainer_id",
        navn: "trainer_name",
        by: "hometown",
        alder: "age",
        antalBadges: "badge_count"
    };

    const sortColumn = allowedSort[sort] || "trainer_id";
    const sortOrder = order.toUpperCase() === "DESC" ? "DESC" : "ASC";

    let sql = "SELECT * FROM trainer";
    const values = [];

    if (type !== "all") {
        sql += " WHERE level_id = ?";
        values.push(type);
    }

    sql += ` ORDER BY ${sortColumn} ${sortOrder}`;

    connection.query(sql, values, (error, results) => {
        if (error) {
            console.log("SQL FEJL:", error);
            return res.status(500).send(error.message);
        }

        res.json(results);
    });
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
                console.log("SQL FEJL:", error);
                return res.status(500).send(error.message);
            }

        res.send(results);
    });
});

app.post('/trainer/new', (req, res) => {
    const trainerName = req.body.trainerName;
    const homeTown = req.body.homeTown;
    const trainerAge = req.body.trainerAge;
    const pokemonId = req.body.pokemonId;

            connection.query(
                "INSERT INTO trainer (trainer_name, hometown, age, level_id) VALUES (?, ?, ?, ?)",
                [trainerName, homeTown, trainerAge, 1],
                (error, result) => {
                    if (error) {
                        console.log("FEJL VED OPRET TRÆNER:", error.message);
                        return res.status(500).send(error.message);
                    }
                    const trainerId = result.insertId;
                    console.log("TRÆNER OPRETTET MED ID:", trainerId);

                    connection.query(
                        "INSERT INTO trainer_pokemon (trainer_id, pokedex_number) VALUES (?, ?)",
                        [trainerId, pokemonId],
                        (error) => {
                            if (error) {
                                console.log(error);
                                return res.status(500).send(error.message);
                            }

                            res.send("Ny træner oprettet med " + pokemonId);
                        }
                    );
                }
            );
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});