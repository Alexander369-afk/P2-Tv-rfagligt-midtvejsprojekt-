
fetch("http://localhost:3000/statistics")
    .then(response => response.json())
    .then(data => {

        const typer = data.map(pokemon => pokemon.primary_type);
        const antal = data.map(pokemon => pokemon.antal);
        const attack = data.map(pokemon => pokemon.gennemsnitAttack);

        // graf 1
        new Chart(document.querySelector("#typeChart"), {
            type: "bar",
            data: {
                labels: typer,
                datasets: [{
                    label: "Antal Pokémon",
                    data: antal
                }]
            }
        });

        // Graf 2
        new Chart(document.querySelector("#attackChart"), {
            type: "bar",
            data: {
                labels: typer,
                datasets: [{
                    label: "Gennemsnitlig Attack",
                    data: attack
                }]
            }
        });

        //graf 3 fetcher fordi det er endnu en route /trainers
        fetch("http://localhost:3000/statistics/trainers")
            .then(response => response.json())
            .then(data => {

                if (data.length > 0) {
                    document.querySelector("#bedsteTrainer").textContent =
                        data[0].trainer_name + ": " + data[0].antal + " Pokémon";
                }

            });

    })
    .catch(error => console.log("FEJL:", error));
