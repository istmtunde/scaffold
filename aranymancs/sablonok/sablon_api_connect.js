function ajax(parameter,fvg) {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
		if (this.status==200) {
			let myObj = JSON.parse(this.responseText)
			fvg(myObj);
		}
		else {
			alert("Hiba történt az adatok betöltésekor!")
		}
    }
    xhttp.open("GET",url+"?"+parameter)
    xhttp.send()
}

