document.addEventListener('DOMContentLoaded', () => {
  const search = document.querySelector('.search');
  const btn = document.querySelector('.btn');
  const input = document.querySelector('.input');

  const buttonMenu = document.querySelector('.menu');
  const navOptions = document.querySelector('.nav-options');

  const buttonMenuUser = document.querySelector('.user');
  const navUser = document.querySelector('.nav-user');

  function eventHTML(button, nav, input = null) {
    if (button && nav) {
      button.addEventListener('click', () => {
        nav.classList.toggle('active');
  
        if (input) {
          input.focus();
        }
      });
    }
  }
  
  eventHTML(btn, search, input);
  eventHTML(buttonMenu, navOptions);
  eventHTML(buttonMenuUser, navUser);
});
