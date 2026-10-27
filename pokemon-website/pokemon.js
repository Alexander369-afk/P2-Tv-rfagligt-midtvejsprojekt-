

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
                pokemonImage.src = Pokemon_Placeholder.png

               

                if (pokemondata.primary_type)
                     {
                    card.classList.add(pokemondata.primary_type.toLowerCase());
                    }
             listPokemon.appendChild(card);
             }
        );
    }

    

    