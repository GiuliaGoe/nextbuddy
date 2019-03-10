import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["reinvented.", "revolutionized.", "disrupted."],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
