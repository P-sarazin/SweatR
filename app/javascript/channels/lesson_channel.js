import consumer from "./consumer"

const JOIN_ROOM = "JOIN_ROOM";
const EXCHANGE = "EXCHANGE";
const REMOVE_USER = "REMOVE_USER";

// DOM Elements
let currentUser;
let remoteVideoContainer;

// Objects
let pcPeers = {};
let localstream;

// Ice Credentials
const ice = { iceServers: [{ urls: "stun:stun.l.google.com:19302" }] };

// Initialize user's own video
document.addEventListener('turbolinks:load', () => {
  remoteVideoContainer = document.getElementById("remote-video-container");
  if (remoteVideoContainer) {
    currentUser = remoteVideoContainer.dataset.currentUserId;
  };
  const localVideo = document.getElementById("local-video");
  const joinButton = document.getElementById("join-button");
  if (joinButton) {
    joinButton.addEventListener('click', handleJoinSession);

    navigator.mediaDevices
      .getUserMedia({
        audio: true,
        video: true,
      })
      .then((stream) => {
        localstream = stream;
        localVideo.srcObject = stream;
        localVideo.muted = true;
      })
      .catch(logError);
  };
});

const handleJoinSession = (e) => {
  e.preventDefault();

  consumer.subscriptions.create("LessonChannel", {
    connected: () => {
      document.getElementById("join-button").style.display = "none";

      broadcastData({
        type: JOIN_ROOM,
        from: currentUser,
      });
    },
    received: (data) => {
      if (data.from === currentUser) return;
      switch (data.type) {
      case JOIN_ROOM:
        return joinRoom(data);
      case EXCHANGE:
        if (data.to !== currentUser) return;
        return exchange(data);
      case REMOVE_USER:
        return removeUser(data);
      default:
        return;
      }
    },
  });
};


const joinRoom = (data) => {
  createPC(data.from, true);
};

const removeUser = (data) => {
  console.log("removing user", data.from);
  let video = document.getElementById(`remoteVideoContainer-${data.from}`);
  video && video.remove();
  delete pcPeers[data.from];
};

const createPC = (userId, isOffer) => {
  let pc = new RTCPeerConnection(ice);
  pcPeers[userId] = pc;

  for (const track of localstream.getTracks()) {
    pc.addTrack(track, localstream);
  }

  isOffer &&
    pc
      .createOffer()
      .then((offer) => {
        return pc.setLocalDescription(offer);
      })
      .then(() => {
        broadcastData({
          type: EXCHANGE,
          from: currentUser,
          to: userId,
          sdp: JSON.stringify(pc.localDescription),
        });
      })
      .catch(logError);

  pc.onicecandidate = (event) => {
    event.candidate &&
      broadcastData({
        type: EXCHANGE,
        from: currentUser,
        to: userId,
        candidate: JSON.stringify(event.candidate),
      });
  };

  pc.ontrack = (event) => {
    if (!document.getElementById(`remoteVideoContainer-${userId}`)) {
      const element = document.createElement("video");
      element.id = `remoteVideoContainer-${userId}`;
      element.classList.add('sweatr-stream');
      element.autoplay = "autoplay";
      element.srcObject = event.streams[0];
      remoteVideoContainer.appendChild(element);
    };
  };

  pc.oniceconnectionstatechange = () => {
    if (pc.iceConnectionState == "disconnected") {
      console.log("Disconnected:", userId);
      broadcastData({
        type: REMOVE_USER,
        from: userId,
      });
    }
  };

  return pc;
};

const exchange = (data) => {
  let pc;

  if (!pcPeers[data.from]) {
    pc = createPC(data.from, false);
  } else {
    pc = pcPeers[data.from];
  }

  if (data.candidate) {
    pc.addIceCandidate(new RTCIceCandidate(JSON.parse(data.candidate)))
      .then(() => console.log("Ice candidate added"))
      .catch(logError);
  }

  if (data.sdp) {
    const sdp = JSON.parse(data.sdp);
    pc.setRemoteDescription(new RTCSessionDescription(sdp))
      .then(() => {
        if (sdp.type === "offer") {
          pc.createAnswer()
            .then((answer) => {
              return pc.setLocalDescription(answer);
            })
            .then(() => {
              broadcastData({
                type: EXCHANGE,
                from: currentUser,
                to: data.from,
                sdp: JSON.stringify(pc.localDescription),
              });
            });
        }
      })
      .catch(logError);
  }
};

const broadcastData = (data) => {
  /**
   * Add CSRF protection: https://stackoverflow.com/questions/8503447/rails-how-to-add-csrf-protection-to-forms-created-in-javascript
   */
  const csrfToken = document.querySelector("[name=csrf-token]").content;
  const headers = new Headers({
    "content-type": "application/json",
    "X-CSRF-TOKEN": csrfToken,
  });

  fetch("/cams", {
    method: "POST",
    body: JSON.stringify(data),
    headers,
  });
};

const logError = (error) => console.warn("Whoops! Error:", error);
