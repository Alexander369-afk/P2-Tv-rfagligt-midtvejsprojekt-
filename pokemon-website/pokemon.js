
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
        

         //AI 
        const Stats = document.createElement("div"); 
        Stats.classList.add ("card-stats", "hidden");

        const statGenerator = [
            { label: "HP", value: pokemondata.hp },
            { label: "Attack", value: pokemondata.attack },
            { label: "Defence", value: pokemondata.defence },
            { label: "Speed", value: pokemondata.speed },
            { label: "Primary Type", value: pokemondata.primary_type},
            { label: "Special Defense", value: pokemondata.special_defence},
            { label: "Special Attack", value: pokemondata.special_attack}

        ];

        statGenerator.forEach(stat =>  {
        const statline = document.createElement("p");
             
        const strongStatLine = document.createElement("strong"); 
        strongStatLine.textContent = `${stat.label}: `;

        statline.appendChild(strongStatLine);

        let talVærdi = stat.value
        if (stat.value === null || stat.value === undefined) {
                  talVærdi = "N/A";
        }
         statline.append(talVærdi)
         Stats.appendChild(statline)
         // AI SLUT

        });

        const pokeButton = document.createElement("button");
        pokeButton.type = "button";
        pokeButton.classList.add("button-stats")
        pokeButton.textContent = "Vis Stats";
        // AI
        pokeButton.addEventListener("click", () => {
          const statsAreHidden = Stats.classList.toggle("hidden");
          pokemonImage.classList.toggle("hidden");
        // AI SLUT

         if (statsAreHidden) {
          pokeButton.textContent = "Vis Stats";
             } else {
                 pokeButton.textContent = "Vis Billede";
                    }
        });
        
        const pokemonName = document.createElement("h4");
        pokemonName.textContent = pokemondata.name;
        // AI
        if (pokemondata.primary_type) {
            card.classList.add(pokemondata.primary_type.toLowerCase());
        }  
        
         card.appendChild(rarityBadge);
         card.appendChild(pokemonName);
         card.appendChild(pokemonImage);
         card.appendChild(Stats);
         card.appendChild(pokeButton);
        
       
        listPokemon.appendChild(card);
    });
    // AI slut
}


// Kør funktionen når brugeren ændrer et filter
document.querySelector("#search").addEventListener("input", hentPokemon);
document.querySelector("#typeFilter").addEventListener("change", hentPokemon);
document.querySelector("#sortering").addEventListener("change", hentPokemon);
document.querySelector("#sortOrder").addEventListener("change", hentPokemon);

// Hent Pokémon når siden åbnes
hentPokemon();
