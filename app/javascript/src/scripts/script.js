document.addEventListener('turbolinks:load', () => {
  const body = document.body;

  const buttonActiveSearch = document.querySelector('.btn-search');
  const searchInput = document.querySelector('.search');
  const inputName = document.querySelector('.input');

  const buttonMenu = document.querySelector('.menu');
  const navOptions = document.querySelector('.nav-options');

  const buttonMenuUser = document.querySelector('.button-nav-user');
  const navUser = document.querySelector('.nav-user');

  const buttonHabilitInput = document.getElementById('habilit-input-edit');
  const buttonHabilitInputs = document.getElementById('habilit-inputs-edit');

  const buttonEditNameUser = document.querySelector('.button-registration-user');
  const inputEditName = document.getElementById('name');

  const buttonsEditInputs = document.querySelectorAll('.buttons-desable');
  const inputsAddress = document.querySelectorAll('.disable');

  const navOptionsMobile = document.querySelector('.nav-options-mobile');
  const buttonActiveNavGenre = document.querySelector('.genre-list');

  const navOptionSearchMobile = document.querySelector('.nav-search-mobile');
  const buttonActiveSearchNav = document.querySelector('.search-button');

  const buttonsExit = document.querySelectorAll('.nav-exit');
  
  body.addEventListener('mouseover', ({ target: { className } }) => {
    const tagActive = document.querySelector('.active');
  
    if (className === 'leyout-header') {
      if (tagActive) {
        tagActive.classList.remove('active');
      }
    }
  });

  function exitModal(buttons, modal) {
    if (buttons) {
      buttons.forEach((button) => {
        button.addEventListener('click', () => {
          modal.forEach((m) => {
            m.classList.remove('active');
          });
        });
      })
    }
  }

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

  function abilitInputsEdition(button, tags, inputHabilit) {
    eventHTML(button, tags);

    if (button) {
      button.addEventListener('click', () => {
        if (button.value === 'Editar') {
          button.value = 'Cancelar';
        } else {
          button.value = 'Editar';
        }

        inputHabilit.forEach((i) => {
          if (i.disabled === false) {
            i.disabled = true
            return;
          }
          
          i.disabled = false
        });
      });
    }
  }
  
  eventHTML(buttonActiveSearch, [searchInput], inputName);
  eventHTML(buttonMenuUser, [navUser]);
  eventHTML(buttonMenu, [navOptions]);
  eventHTML(buttonActiveNavGenre, [navOptionsMobile]);
  eventHTML(buttonActiveSearchNav, [navOptionSearchMobile]);

  exitModal(buttonsExit, [navOptionsMobile, navOptionSearchMobile]);

  abilitInputsEdition(buttonHabilitInput, [buttonEditNameUser], [inputEditName]);
  abilitInputsEdition(buttonHabilitInputs, buttonsEditInputs, inputsAddress);
});
