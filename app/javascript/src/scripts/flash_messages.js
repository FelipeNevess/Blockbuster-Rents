import Toastify from "toastify-js";

window.addEventListener('DOMContentLoaded', () => {
  const messages = document.body.dataset.flashMessages

  const backgroundColors = {
    notice: '#009688',
    alert: '#f44336',
    error: '#f44336'
  }

  JSON.parse(messages).forEach(([ type, message ]) => {
    Toastify({
      text: message,
      duration: 3000,
      close: true,
      style: {
        background: backgroundColors[type],
      },
      stopOnFocus: true
    }).showToast();
  });
})
