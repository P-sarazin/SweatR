import Plyr from 'plyr';
import 'plyr/dist/plyr.css';
const initPlyr = () => {
  const player = new Plyr('#player');
};

const countDownDate = new Date("May 29, 2020 15:37:25").getTime();

const x = setInterval(function() {
const now = new Date().getTime();

const distance = countDownDate - now;

const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
const seconds = Math.floor((distance % (1000 * 60)) / 1000);

document.getElementById("Timer").innerHTML = hours + "h "
+ minutes + "m " + seconds + "s ";

if (distance < 0) {
  clearInterval(x);
  document.getElementById("Timer").innerHTML = "WELL DONE!!";
}});

export { initPlyr };
export { countDownDate }
