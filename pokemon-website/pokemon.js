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

 // Sender valgene til PHP
    fetch(`https://zzzjos.dk/pokemon/api/search.php?name=${encodeURIComponent(navn)}&type=${type}&sort=${sort}&order=${order}`)
        .then(response => response.json())
        .then(pokemonPokemon => {
            RenderData(pokemonPokemon);
        });
}


function RenderData(data) {

    const listPokemon = document.querySelector("#pokemonContainer");
    listPokemon.replaceChildren();

    data.forEach(pokemondata => {

        const card = document.createElement("article");
        card.classList.add("pokemon-card");

        const pokemonImage = document.createElement("img");
        pokemonImage.alt = pokemondata.name;
        pokemonImage.src = `../pokemon-images/${pokemondata.pokedex_number}.png`;

        const pokemonName = document.createElement("h4");
        pokemonName.textContent = pokemondata.name;

        if (pokemondata.primary_type) {
            card.classList.add(pokemondata.primary_type.toLowerCase());
        }

        card.appendChild(pokemonName);
        card.appendChild(pokemonImage);
        listPokemon.appendChild(card);
    });
}


// Kør funktionen når brugeren ændrer et filter
document.querySelector("#search").addEventListener("input", hentPokemon);
document.querySelector("#typeFilter").addEventListener("change", hentPokemon);
document.querySelector("#sortering").addEventListener("change", hentPokemon);
document.querySelector("#sortOrder").addEventListener("change", hentPokemon);

// Hent Pokémon når siden åbnes
hentPokemon();


baj