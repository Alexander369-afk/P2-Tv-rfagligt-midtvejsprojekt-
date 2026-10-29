
function hentPokemon() {
    const navn = document.querySelector("#search").value;
    const type = document.querySelector("#typeFilter").value;
    const sort = document.querySelector("#sortering").value;
    const order = document.querySelector("#sortOrder").value;


    fetch(`http://localhost:3000/all?name=${encodeURIComponent(navn)}&type=${type}&sort=${sort}&order=${order}`)
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

        const rarityBadge = document.createElement("img");
        rarityBadge.src = `../img/rarity/rarity-${pokemondata.rarity_id}.svg`;
        rarityBadge.alt = "";
        rarityBadge.classList.add("rarity-badge");
        card.appendChild(rarityBadge);





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
