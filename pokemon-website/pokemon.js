

fetch(`https://zzzjos.dk/pokemon/api/data.php`)
.then(response => response.json())
    .then(pokemonPokemon => {
        RenderData(pokemonPokemon);
  
    });


    function RenderData (data) 
    {
        const listPokemon = document.querySelector("#dump");
        data.forEach(pokemondata => 
            {
                const li = document.createElement("li");
                li.textContent = pokemondata.title; 
                listPokemon.appendChild(li);
             }
        );
    }

    

    