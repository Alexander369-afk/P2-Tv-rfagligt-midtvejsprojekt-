document.getElementById("opretTræner").addEventListener("click", ()  => {
    const navn = document.getElementById("trænerNavn").value.trim();

    if (!name) {
        alert("du har ikke indtastet et navn");
        return;
    }

    fetch(`https://zzzjos.dk/pokemon/api/data.php`)

}