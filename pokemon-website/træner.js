console.log("Træner.js virker!");

function opretTræner(){
   const navn = document.querySelector("#trænerNavn").value.trim();
   const homeTown = document.querySelector("#homeTown").value.trim();
   const alder = document.querySelector("#trainerAge").value.trim();
    const pokemonId = document.querySelector("#trænerPokemonForbind").value;

if (!navn || !homeTown || !alder) {
    alert("indtast et træner navn, alder og by");
    return;
}



    fetch("http://localhost:3000/trainer/new")
        .then(response => response.json())
        .then(trainerTrainer => {
            RenderDataTrainer(trainerTrainer);
        });

fetch("http://localhost:3000/trainer/new", {
    method: "POST",
    headers: {
        "content-type": "application/json"
    }, body: JSON.stringify({
        trainerName: navn,
        homeTown: homeTown,
        trainerAge: alder,
        pokemonId: pokemonId

    })
});

}

document.querySelector("#opretTræner").addEventListener("click", opretTræner);





function RenderDataTrainer(data) {

    const listTrainer = document.querySelector("#trainerContainer");
    listTrainer.replaceChildren();

    data.forEach(trainerdata => {

        const card = document.createElement("article");
        card.classList.add("pokemon-card");

        const trainerImage = document.createElement("img");
        trainerImage.alt = trainerdata.name;
        trainerImage.src = "./images/ash.png"

        const trainerName = document.createElement("h4");
        trainerName.textContent = pokemondata.name;

        card.appendChild(trainerName);
        card.appendChild(trainerImage);
        listPokemon.appendChild(card);
    });
}
b