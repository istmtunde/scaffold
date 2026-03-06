function loadVarosok() {
  ajax("varosok.php", function (varosok) {
    const select = document.getElementById("varos_select");

    varosok.forEach(varos => {
      const option = document.createElement("option");
      option.value = varos;
      option.textContent = varos;
      select.appendChild(option);
    });
  });
}

function loadFajok() {
  ajax("fajok.php", function (fajok) {
    const select = document.getElementById("kisallat_select");

    fajok.forEach(faj => {
      const option = document.createElement("option");
      option.value = faj;
      let fajText;
      if (faj === "kutya") {
        fajText = "Kutyus";
      } else if (faj === "macska") {
        fajText = "Cica";
      } else {
        fajText = faj;
      }
      option.textContent = fajText;
      select.appendChild(option);
    });
  });
}

function loadTablazat() {
  const varosSelect = document.getElementById("varos_select");
  const fajSelect = document.getElementById("kisallat_select");
  const selectedVaros = varosSelect.value;
  const selectedFaj = fajSelect.value;

  const path = `?varos=${selectedVaros}&allat=${selectedFaj}`;

  ajax(path, function (allatok) {
    const tbody = document.getElementById("kisallat_tbody");
    tbody.innerHTML = "";

    allatok.forEach(allat => {
      const tr = document.createElement("tr");
      const imgTd = document.createElement("td");
      const img = document.createElement("img");

      let imgName;
      if (allat.faj === "kutya") {
        imgName = "dog.jpg";
      } else if (allat.faj === "macska") {
        imgName = "cat.jpg";
      } else {
        imgName = "";
      }

      img.src = `forrasok/${imgName}`;
      img.alt = allat.nev;
      imgTd.appendChild(img);
      tr.appendChild(imgTd);

      const nevTd = document.createElement("td");
      nevTd.textContent = allat.nev;
      tr.appendChild(nevTd);

      const korTd = document.createElement("td");
      korTd.textContent = allat.kor_honap;
      tr.appendChild(korTd);

      const nemTd = document.createElement("td");
      nemTd.textContent = allat.nem;
      tr.appendChild(nemTd);

      const fajtaTd = document.createElement("td");
      fajtaTd.textContent = allat.fajta;
      tr.appendChild(fajtaTd);

      const helyTd = document.createElement("td");
      helyTd.textContent = allat.menhely_varos;
      tr.appendChild(helyTd);

      const megjegyzesTd = document.createElement("td");
      megjegyzesTd.textContent = allat.megjegyzes;
      tr.appendChild(megjegyzesTd);

      tbody.appendChild(tr);
    });

    document.getElementById("talalat_szam").textContent = allatok.length;
    document.getElementById("osszes_orkobefogadhato").textContent = allatok.filter(allat => allat.statusz === "örökbefogadható").length;
  });
}

$(window).on('load', function () {
  loadVarosok();
  loadFajok();
  loadTablazat();
});
