const videoStream = () => {

  var dataURLtoBlob;

  dataURLtoBlob = function(dataURL) {
    var array, binary, i;
    binary = atob(dataURL.split(',')[1]);
    array = [];
    i = 0;
    while (i < binary.length) {
      array.push(binary.charCodeAt(i));
      i++;
    }
    return new Blob([new Uint8Array(array)], {
      type: 'image/png'
    });
  };
  var canvas, context, i, video, videoObj;
  canvas = document.getElementById('canvas');
  video = document.getElementById('video');
  videoObj = {
    'video': true
  };
  i = void 0;
  if (video != null && navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
    navigator.mediaDevices.getUserMedia({
      video: true
    }).then(function(stream) {
      video = document.querySelector('video');
      console.log(stream);
      if ('srcObject' in video) {
        video.srcObject = stream;
      } else {
        video.src = window.URL.createObjectURL(stream);
      }
      video.play();
      video.onplay = function() {
        if (canvas != null) {
          context = canvas.getContext('2d');
          return i = window.setInterval((function() {
            var fd, file;
            context.drawImage(video, 0, 0, 640, 480);
            file = dataURLtoBlob(canvas.toDataURL());
            fd = new FormData;
            fd.append('image', file);
            fd.append('channel', "webcam");
            // $.ajax({
            //   type: 'POST',
            //   url: '/cams',
            //   data: fd,
            //   processData: false,
            //   contentType: false
            // });
          }), 500);
        }
      };
      video.onpause = function() {
        return window.clearInterval(i);
      };
      return video.onended = function() {
        return window.clearInterval(i);
      };
    })["catch"](function(err) {
      console.log(err.name + ': ' + err.message);
    });
  }
};

export { videoStream };
