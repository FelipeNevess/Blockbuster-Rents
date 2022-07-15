document.addEventListener('turbolinks:load', () => {
  const buttonSubmit = document.querySelector('.search-cep');

  let myInit = {
    method: 'GET',
    cache: 'default'
  };

  async function zipCodeValidation() {
    const cep = document.getElementById('information-cep');

    const cleanValueCEP = cep.value.replace(/\.|\-/g, '');

    const city = document.getElementById('information-city');
    const state = document.getElementById('information-state');
    const address = document.getElementById('information-address');

    if (cleanValueCEP !== '') {
      await fetch(`https://viacep.com.br/ws/${cleanValueCEP}/json/`, myInit)
        .then((res) => res.json())
        .then((res) => {
          city.value = res['localidade'];
          state.value = res['uf'];
          address.value = res['logradouro'];
        });
    }

  }

  if (buttonSubmit) {
    buttonSubmit.addEventListener('click', () => {
      zipCodeValidation();
    });
  }
});