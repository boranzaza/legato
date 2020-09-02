const ratingStars = () => {
  const ratingRating = document.querySelector("#review_rating");
  const allStars = Array.from(document.querySelectorAll(".star"))
  const onStarMouseOver = (event) => {
    const star = event.currentTarget
    ratingRating.value = star.dataset.value;
    const starIndex = allStars.indexOf(star);
    allStars.forEach((s) => {
      if (allStars.indexOf(s) > starIndex) {
        s.children[0].classList.remove("fas");
        s.children[0].classList.add("far");
      } else {
        s.children[0].classList.add("fas");
        s.children[0].classList.remove("far");
      }
    });
  }
  allStars.forEach((star) => {
    star.addEventListener("mouseover", onStarMouseOver);
  });
};

export { ratingStars };
