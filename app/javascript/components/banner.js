import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector('#banner-typed-text')
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Crossfit", "Yoga", "Bodypump", "Stretching"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
