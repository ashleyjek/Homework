document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });


  // adding SF places as list items

  // Your code here
 
  favInput.addEventListener('click', event => {
    event.preventDefault();
    const favInput = document.getElementbyClassName('favorite-input');
    const newPlace = favInput.value;

    const ul = document.getElementById('sf-places')
    const li = document.createElement('li');
    li.textContent = newPlace;
    ul.appendChild(li);

  })
  
  // adding new photos

  // Your code here
});


