importScripts("https://www.gstatic.com/firebasejs/10.12.3/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.12.3/firebase-messaging-compat.js");

firebase.initializeApp({
  apiKey: 'AIzaSyDA3gME8m1E1dJrutfz0kQBxbVQ6UITIw8',
  appId: '1:349377624153:web:53bcccf302664e9ceb1948',
  messagingSenderId: '349377624153',
  projectId: 'Flutter-template',
  authDomain: 'Flutter-template.firebaseapp.com',
  storageBucket: 'Flutter-template.appspot.com',
  measurementId: 'G-WG5KQTSGW9',
});
// TODO do we need the real ids?
// firebase.initializeApp({
//     apiKey: "...",
//     authDomain: "...",
//     databaseURL: "...",
//     projectId: "...",
//     storageBucket: "...",
//     messagingSenderId: "...",
//     appId: "...",
//   });

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
  // TODO either show a notification or pass it to the app somehow?
});
