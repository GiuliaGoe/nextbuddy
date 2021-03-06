import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const bannerText = document.querySelector('#banner-typed-text');
  if (bannerText) {
    new Typed('#banner-typed-text', {
      strings: ["meaningful to you.", "worth investing in.", "you actually like."],
      typeSpeed: 80,
      loop: true,
    });
  }
}

export { loadDynamicBannerText };
