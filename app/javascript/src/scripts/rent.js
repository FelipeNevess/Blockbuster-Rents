import Toastify from "toastify-js";

window.addEventListener('turbolinks:load', () => {
  const token = document.querySelector("meta[name='csrf-token']").content;
  const headers = {
    'Content-Type': 'application/json',
    'X-CSRF-Token': token
  };

  const buttonRent = document.querySelector('.to-hire');

  if (buttonRent) {
    buttonRent.addEventListener('click', rentSubmite)

    function responseToastify({ successful }, text) {
      Toastify({
        text,
        duration: 3000,
        close: true,
        style: {
          background: successful ? '#f44336' : '#009688',
        },
        stopOnFocus: true
      }).showToast();
    }
  
    function rentSubmite({ target }){
      const actionElement = target.closest('.button-add-movie');
      const id = actionElement.dataset.rentMovieId
  
      fetch('/rents', {
        method: 'POST',
        headers,
        body: JSON.stringify({
          rent: {
            movie_id: id
          }
        })
      })
        .then(res => res.json())
        .then(json => handleLikeResponse({ ...json }))
        .catch(({ error }) => responseToastify(error, 'Erro de requisição'));
    }
  
    function handleLikeResponse({ successful }) {
      if (successful) {
        buttonRent.innerHTML = 'Entregar em 3 dias';

        responseToastify(successful, 'Filme alugado com sucesso.')
      }
    }

    const dateTimeRent = document.querySelector('.date-time-rent');
  
    if (dateTimeRent) {
      const actionElement = document.querySelector('.button-add-movie');
      const id = actionElement.dataset.rentId
  
      if (dateTimeRent.innerText.includes('3 dias')) {
        fetch(`/rents/${id}`, {
          method: 'DELETE',
          headers
        })
          .then((res) => res.json())
          .then(({ successful }) => responseToastify(successful, 'Prazo encerrado, filme entregue!'))
          .catch(({ error }) => responseToastify(error, 'Erro de requisição'));
      }
    }
  }
});
