console.log("Træner.js virker!");

function hentTrænere() {
    const type = document.querySelector("#typeFilterTræner").value;
    const sort = document.querySelector("#sorteringTrænere").value;
    const order = document.querySelector("#sortOrder").value;

    if (sort === "relationer") {
        hentRelationer();
        return;
    }

    fetch(`http://localhost:3000/trainer?type=${type}&sort=${sort}&order=${order}`)
        .then(response => response.json())
        .then(trænere => {
            RenderDataTrainer(trænere);
        });
}

document.querySelector("#typeFilterTræner").addEventListener("change", hentTrænere);
document.querySelector("#sorteringTrænere").addEventListener("change", hentTrænere);
document.querySelector("#sortOrder").addEventListener("change", hentTrænere);



function RenderDataTrainer(data) {

    const listTrainer = document.querySelector("#trainerContainer");
    listTrainer.replaceChildren();

    data.forEach(trainerdata => {

        const card = document.createElement("article");
        card.classList.add("pokemon-card");

        const trainerImage = document.createElement("img");
        trainerImage.alt = trainerdata.trainer_name;
        trainerImage.src = `../img/trainers/${trainerdata.trainer_id}.png`;

        const levelBadge = document.createElement("img");
        levelBadge.src = `../img/trainerbadges/level-${trainerdata.level_id}.svg`;
        levelBadge.alt = "";
        levelBadge.classList.add("rarity-badge");
        card.appendChild(levelBadge);


        const trainerName = document.createElement("h4");
        trainerName.textContent = trainerdata.trainer_name

        card.appendChild(trainerName);
        card.appendChild(trainerImage);
        listTrainer.appendChild(card);
    });
}


function opretTræner(){
   const navn = document.querySelector("#trænerNavn").value.trim();
   const homeTown = document.querySelector("#homeTown").value.trim();
   const alder = document.querySelector("#trainerAge").value.trim();
    const pokemonId = document.querySelector("#trænerPokemonForbind").value;

if (!navn || !homeTown || !alder) {
    alert("indtast et træner navn, alder og by");
    return;
}




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

function hentRelationer() {

    fetch("http://localhost:3000/trainer/relations")
        .then(response => response.json())
        .then(data => {

            const container = document.querySelector("#trainerContainer");
            container.replaceChildren();

            data.forEach(relation => {

                const card = document.createElement("article");

                const tekst = document.createElement("p");
                tekst.textContent = `${relation.trainer_name} :  ${relation.pokemons}`;

                card.appendChild(tekst);
                container.appendChild(card);

                const sort = document.querySelector("#sorteringTrænere").value;

            });
        });
}


document.querySelector("#opretTræner").addEventListener("click", opretTræner);
hentTrænere();

