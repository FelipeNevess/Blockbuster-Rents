document.addEventListener('turbolinks:load', () => {
  const buttonPlay = document.querySelector('.play-start-movie');
  const buttonAudio = document.querySelector('.button-audio');
  const buttonDisplay = document.querySelector('.display-details');

  const video = document.querySelector('.video');
  const movieImage = document.querySelector('.movie-image');
  const movieInfos = document.querySelector('.movie-infos');

  if (buttonPlay) {
    buttonPlay.addEventListener('click', () => {
      if (video.paused) {
        video.play();
      
        buttonPlay.style.display = 'none';
        buttonAudio.setAttribute('value', '❌');
      }
      
      video.classList.toggle('start');
      video.classList.toggle('translate');
      
      movieImage.classList.toggle('start');
      movieInfos.classList.toggle('add-margin');
  
      buttonAudio.classList.toggle('start');
      buttonDisplay.classList.toggle('start');
    });
  }

  if (buttonAudio) {
    buttonAudio.addEventListener('click', () => {
      if (video.muted === false) {
        video.muted = true;
        buttonAudio.setAttribute('value', '❌');
        return;
      }
  
      video.muted = false;
      buttonAudio.setAttribute('value', '');
    });
  }

  if (buttonDisplay) {
    buttonDisplay.addEventListener('click', () => {
      movieInfos.classList.toggle('add-margin');
      video.classList.toggle('translate');
    });
  }

  if (video) {
    video.addEventListener('click', () => {
      movieInfos.classList.toggle('add-margin');
      video.classList.toggle('translate');
    });
  }


  if (movieImage) {
    movieImage.addEventListener('click', () => {
      if (video.paused) {
        video.play();
      
        buttonPlay.style.display = 'none';
        buttonAudio.setAttribute('value', '❌');
      } else {
        video.pause();
  
        buttonPlay.style.display = 'flex';
      }
  
      video.classList.toggle('start');
      video.classList.toggle('translate');
  
      movieImage.classList.toggle('start');
      movieInfos.classList.toggle('add-margin');
  
      buttonAudio.classList.toggle('start');
      buttonDisplay.classList.toggle('start');
    });
  }
});
