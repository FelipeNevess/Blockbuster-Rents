window.addEventListener('turbolinks:load', () => {
  const token = document.querySelector("meta[name='csrf-token']").content;
  const headers = {
    'Content-Type': 'application/json',
    'X-CSRF-Token': token
  };
  
  document.querySelectorAll('.like').forEach((button) => {
    button.addEventListener('click', like);
  });

  document.querySelectorAll('.deslike').forEach((button) => {
    button.addEventListener('click', deslike);
  });
  
  function like({ target }){
    const actionElement = target.closest('.favorite-movie');
    // https://developer.mozilla.org/pt-BR/docs/Web/API/Element/closest
    const id = actionElement.dataset.movieId

    fetch('/favorites', {
      method: 'POST',
      headers,
      body: JSON.stringify({
        favorite: {
          movie_id: id
        }
      })
    })
      .then(res => res.json())
      .then(json => handleLikeResponse({ ...json, actionElement }))
      .catch(err => console.log("Falha na requisição", err));
  }

  function deslike({ target }){
    const actionElement = target.closest('.favorite-movie');
    const id = actionElement.dataset.favoriteId

    fetch(`/favorites/${id}`, {
      method: 'DELETE',
      headers
    })
      .then(res => res.json())
      .then(json => handleLikeResponse({ ...json, actionElement }))
      .catch(err => console.log("Falha na requisição", err));
  }

  function handleLikeResponse({ id, successful, actionElement }) {
    if (successful) {
      actionElement.dataset.favoriteId = id;

      actionElement.querySelectorAll('.like, .deslike').forEach((button) => {
        button.classList.toggle('hidden');
      });
    }
  }
});
