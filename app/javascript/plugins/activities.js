// Activities list js
const activitiesList = () => {
  const toggleActiveOnClick = (event) => {
    event.currentTarget.classList.toggle("active");
  };

  const clickableList = document.querySelectorAll(".clickable");
  clickableList.forEach((event) => {
    event.addEventListener("click", toggleActiveOnClick);
  });
};

export { activitiesList };
