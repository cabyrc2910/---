let loginInput = document.getElementById('login');
let passInput = document.getElementById('pass');
let button = document.getElementById('button');
let resultsEl = document.getElementById('results')

button.addEventListener('click', async function () {
    let userData = `
    <?xml version="1.0" encoding="UTF-8" ?>
    <userData>
        <login>${loginInput.value}</login>
        <pass>${passInput.value}</pass>
    </userData>
    `;

    let response = await fetch('registerData.php', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: userData
    });
    let xmlText = await response.text();
    // console.log(xmlText);
    let parser = new DOMParser();
    let xmlDoc = parser.parseFromString(xmlText, "text/xml");
    let date = xmlDoc.getElementsByTagName('date')[0].childNodes[0].nodeValue;
    let login = xmlDoc.getElementsByTagName('login')[0].childNodes[0].nodeValue;
    let pass = xmlDoc.getElementsByTagName('pass')[0].childNodes[0].nodeValue;
    resultsEl.innerText = date + login + pass;
    // console.log(date, login, pass);
});