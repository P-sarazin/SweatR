import Plyr from 'plyr';
import 'plyr/dist/plyr.css';
const computeSecond = (seconde) => {
  if (seconde < 10) {
    return `0${seconde}`;
  } else {
    return `${seconde}`;
  };
};
const initPlyr = () => {
  const player = new Plyr('#player');
  player.on('ready', event => {
    const duration = player.duration;
    console.log(duration);
    player.on('timeupdate', event => {
      const timeleft = player.duration - player.currentTime;
      const seconde = Math.floor(timeleft % 60);
      const minute = Math.floor(timeleft / 60);
      const timer = `${minute}:${computeSecond(seconde)}`;
      const videoTimer = document.getElementById("video-timer");
      videoTimer.innerHTML = timer;
      // calculer tps restant en min et s et afficher
    });
  })
};
export { initPlyr };
