import $ from "jquery";
import "slick-carousel";
// import "slick-carousel/slick/slick.css";
// import "slick-carousel/slick/slick-theme.css";


const initSlick = () => {
  $('.card-slick').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3
  });
}

export { initSlick };
