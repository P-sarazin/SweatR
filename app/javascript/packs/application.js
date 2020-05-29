// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// dynamic banner (les mots de la page home qui défilent)
import 'bootstrap';
import {initPlyr} from '../plugins/init_plyr';
import {countDownDate} from '../plugins/init_plyr';


import { loadDynamicBannerText } from '../components/banner';

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
  initPlyr();
  countDownDate();
});
