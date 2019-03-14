export const initBio = () => {
  const showBioButton = document.getElementById('showBio');

  if (!showBioButton) {
    return;
  }

  showBioButton.addEventListener('touchend', () => {
    document.querySelector('.js-bio-teaser').classList.add('hide');
    document.querySelector('.js-bio-full').classList.remove('hide');
  });
}
