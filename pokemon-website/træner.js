console.log("Træner.js virker!");

function opretTræner(){
   const navn = document.querySelector("#trænerNavn").value.trim();
   const homeTown = document.querySelector("#homeTown").value.trim();
   const alder = document.querySelector("#trainerAge").value.trim();
if (!navn && !homeTown && !alder) {
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
        trainerAge: alder

    })
});

}

document.querySelector("#opretTræner").addEventListener("click", opretTræner);