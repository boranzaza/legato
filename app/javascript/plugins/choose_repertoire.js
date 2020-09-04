const chooseRepertoire = () => {
  const repertoireInput = document.querySelector("#booking_repertoire_number");
  const repertoire1 = document.querySelector("#repertoire1");
  const repertoire2 = document.querySelector("#repertoire2");
  const allRepertoires = Array.from(document.querySelectorAll(".repertoire"))

  const onClick = (event) => {
    const repertoireClicked = event.currentTarget
    repertoireInput.value = repertoireClicked.dataset.value;

    const repertoireClickedIndex = allRepertoires.indexOf(repertoireClicked);

    if (repertoireClickedIndex === 0) {
      allRepertoires[0].classList.add("repertoire-chosen");
      allRepertoires[1].classList.remove("repertoire-chosen");
    } else {
      allRepertoires[1].classList.add("repertoire-chosen");
      allRepertoires[0].classList.remove("repertoire-chosen");
    };
  }
  allRepertoires.forEach((repertoire) => {
    repertoire.addEventListener("click", onClick);
  });
};

export { chooseRepertoire };
