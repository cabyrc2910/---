let response = await fetch('http://localhost/catalogData.php');

if (response.ok) {
  let products = await response.json();
  let productsEl = document.getElementById('products');
  for (let product of products) {
    productsEl.insertAdjacentHTML("beforeend", `
        <div>
            <h2>${product.name}</h2>
            <div>${product.price}</div>
            <img src="${product.image}" alt="${product.name}">
        </div>
    `);
  }
} else {
  alert("Ошибка HTTP: " + response.status);
}