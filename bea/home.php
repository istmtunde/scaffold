<section class="contentSection">
    <div class="container">
        <h2 id="rolunk">Rólunk</h2>
        <p>Az <span class="aranymancs">Aranymancs Menhely</span> egy nonprofit szemléletű, közösségi összefogásra épülő kisállatmentő kezdeményezés. Fő tevékenységünk a bajba jutott kutyák és macskák mentése, ideiglenes gondozása és felelős örökbefogadásuk elősegítése.</p>
        <p>A mentett kisállatok ellátását elkötelezett önkénteseink végzik, amely magában foglalja az etetést, a higiénikus környezet biztosítását, a rendszeres mozgatást és a szocializációt. Célunk, hogy az állatok fizikailag és lelkileg is felkészülten kerüljenek új otthonukba.</p>
        <p>Működésünket adományok és felajánlások teszik lehetővé. Kiemelten fontos számunkra az átláthatóság, valamint a felelős állattartással kapcsolatos ismeretterjesztés, amelynek egyik eszköze jelen weboldal is.</p>
        <div class="feature-cards">
            <div class="feature-card">
            <p class="textBold">Küldetésünk</p>
            <p>A rászoruló kisállatok mentése, gondozása és biztonságos, végleges otthonba juttatása felelős szemlélettel.</p>
            </div>
            <div class="feature-card">
            <p class="textBold">Alapértékeink</p>
            <p>Felelősségtudat, türelem, állatközpontú gondolkodás és korrekt, nyílt kommunikáció.</p>
            </div>
            <div class="feature-card">
            <p class="textBold">Hogyan segíthet?</p>
            <p>Önkéntes munkával, ideiglenes befogadással vagy anyagi támogatással egyaránt hozzájárulhat a munkánkhoz.</p>
            </div>
        </div>
        <a href="#top" class="up mobileHide">⟰</a>
    </div>
</section>

<section class="searchSection">
    <div class="container">
        <div class="searchBox">
            <div class="searchContainer">
                <label for="varosSelect">Város</label>
                <select id="varosSelect" class="filterBox" onchange="getKisallataink()">
                    <option value="mind" selected>Összes</option>
                </select>
            </div>
            <div class="searchContainer">
                <label for="allatSelect">Kisállat típusa</label>
                <select id="allatSelect" class="filterBox" onchange="getKisallataink()">
                    <option value="kutya">Kutyus</option>
                    <option value="macska">Cica</option>
                    <option value="mind" selected>Összes</option>
                </select>
            </div>
            <img class="filter mobileHide" src="./img/filter.png" alt="szűrő" width="50">
        </div>
        <h2 id="kisallataink">Kisállataink</h2>
        <div class="mb-5 searchText">
            Találat <span id="talalatSzam"></span> kisállatból jelenleg <span id="orokbefogadhatoSzam"></span> örökbefogadható.
        </div>
        <div class="allatokTable">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th></th>
                        <th>Név</th>
                        <th>Kor (hónap)</th>
                        <th>Nem</th>
                        <th class="mobileHide">Fajta</th>
                        <th class="mobileHide">Hely</th>
                        <th>Megjegyzés</th>
                    </tr>
                </thead>
                <tbody id="talalatLista">
                </tbody>
            </table>
        </div>
        <a href="#top" class="up mobileHide">⟰</a>
    </div>
</section>

<section class="contentSection">
    <div class="container">
        <h2 id="orokbefogadas">Örökbefogadás</h2>
        <p>A kisállat örökbefogadás hosszú távú felelősséggel járó döntés. Egy kutya vagy tengerimalac nem átmeneti elfoglaltság, hanem érző lény, amely megfelelő gondoskodást igényel. Célunk, hogy az örökbefogadás minden fél számára biztonságos és sikeres legyen.</p>
        <h3>Az örökbefogadás folyamata</h3>
        <ol>
            <li>Válassza ki a megfelelő kisállatot a listából.</li>
            <li>Vegye fel velünk a kapcsolatot időpont egyeztetés céljából.</li>
            <li>Személyes találkozás és tájékoztatás.</li>
            <li>Örökbefogadási nyilatkozat kitöltése.</li>
            <li>A kisállat hazaköltözése fokozatos beszoktatással.</li>
        </ol>
        <div class="importantText">
            <h4>Fontos tudnivaló</h4>
            <p>Kérjük, kizárólag akkor döntösn örökbefogadás mellett, ha rendelkezik a megfelelő idővel, anyagi háttérrel és környezettel a kisállat tartásához. Bizonytalanság esetén szívesen segítünk a döntésben.</p>
        </div>
        <h3>Az örökbefogadást követő időszak</h3>
        <ul>
            <li>Biztosítson nyugodt, stresszmentes környezetet.</li>
            <li>Alakítson ki következetes napi rutint.</li>
            <li>Pozitív megerősítéssel segítse a beilleszkedést.</li>
            <li>Kérdés esetén forduljon hozzánk bizalommal.</li>
        </ul>
        <a href="#top" class="up mobileHide">⟰</a>
    </div>

</section>