window.onload = () => {
  const body = document.body;

  const buttonActiveSearch = document.querySelector('.btn');
  const searchInput = document.querySelector('.search');
  const inputName = document.querySelector('.input');

  const buttonMenu = document.querySelector('.menu');
  const navOptions = document.querySelector('.nav-options');

  const buttonMenuUser = document.querySelector('.user');
  const navUser = document.querySelector('.nav-user');
  
  body.addEventListener('mouseover', ({ target: { className } }) => {
    const tagActive = document.querySelector('.active');
  
    if (className === 'leyout-header') {
      if (tagActive) {
        tagActive.classList.remove('active');
      }
    }
  });

  function eventHTML(button, tags, input = null) {
    if (button && tags) {
      button.addEventListener('click', () => {
        tags.forEach((v, i) => {
          const activeValues = document.querySelectorAll('.active');
  
          v.classList.toggle('active');
  
          if (activeValues[i]) {
            activeValues[i].classList.remove('active');
          }
        });
      
        if (input) {
          input.focus();
        }
      });
    }
  }
  
  eventHTML(buttonActiveSearch, [searchInput], inputName);
  eventHTML(buttonMenuUser, [navUser]);
  eventHTML(buttonMenu, [navOptions]);
};
