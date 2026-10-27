

fetch(`https://zzzjos.dk/pokemon/api/data.php`)
.then(response => response.json())
    .then(pokemonPokemon => {
        RenderData(pokemonPokemon);
  
    });


    function RenderData (data) 
    {
        const listPokemon = document.querySelector("#pokemonContainer");
        listPokemon.replaceChildren();

        data.forEach(pokemondata => 
            {
                const card = document.createElement("article");
                card.classList.add("pokemon-card")

                const pokemonImage = document.createElement("img") 
                pokemonImage.alt = pokemondata.name;
                pokemonImage.src = "../Images/Pokemon_Placeholder.png";
                const pokemonName = document.createElement ("h4")
                pokemonName.textContent = pokemondata.name;

                

                if (pokemondata.primary_type)
                     {
                    card.classList.add(pokemondata.primary_type.toLowerCase());
                    }
                    
             card.appendChild(pokemonName);
             card.appendChild(pokemonImage);
             listPokemon.appendChild(card);
             }
        );
    }

    

    