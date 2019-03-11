let currentStep = 0;
const stepElements = document.querySelectorAll(".form-step");
const nextButtons = document.querySelectorAll(".form-step-next");
const previousButtons = document.querySelectorAll(".form-step-previous");

const stepActiveElements = document.querySelectorAll(".form-step-active");
const li = document.querySelectorAll("li");

nextButtons.forEach ((button) => {
  button.addEventListener('click', () => {
    stepElements[currentStep].classList.remove('form-step-active');
    currentStep += 1;
    stepElements[currentStep].classList.add('form-step-active');
    fixStepIndicator(currentStep);
  })
})

previousButtons.forEach ((button) => {
  button.addEventListener('click', () => {
    stepElements[currentStep].classList.remove('form-step-active');
    currentStep -= 1;
    stepElements[currentStep].classList.add('form-step-active');
    fixStepIndicator(currentStep);
  })
})


function fixStepIndicator(currentStep) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace("active", "");
  }
  //... and adds the "active" class to the current step:
  x[currentStep].className += " active";
}
/////////////
const toggleActiveOnClick = (event) => {
  event.currentTarget.classList.toggle("active");
};

const clickableList = document.querySelectorAll(".clickable");
clickableList.forEach((event) => {
  event.addEventListener("click", toggleActiveOnClick);
});
