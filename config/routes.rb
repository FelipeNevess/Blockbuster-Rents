Rails.application.routes.draw do
  root 'movies#index'

  devise_for :users, only: %i[sessions registrations passwords], path: '', path_names: {
    sign_in: 'session/login',
    registration: 'session/simple-register',
    sign_up: ''
  }

  resources :movies, except: %i[show favorite] do
    get :search, on: :collection
  end

  get 'movies/search/:q', to: 'movies#search', as: 'movies_search_name'

  resources :favorites, only: %i[index create destroy]
  resources :rents, only: %i[create destroy]

  get   'media/movies/:id/:title',    to: 'movies#show',            as: 'media_movie'
  get   'catalog/:id/:catalog_name',  to: 'movies#movies_catalog',  as: 'movie_catalog'

  get   'accounts/register',          to: 'adresses#new',           as: 'new_adress'
  patch 'accounts/register',          to: 'adresses#edit',          as: 'edit_adress'
  post  'accounts/register',          to: 'adresses#create'

  # Não definitivas

  get   'accounts/change_password',   to: 'users#edit'

  patch 'profile_name',               to: 'users#update_name'
  patch 'profile_password',           to: 'users#update_password'
end
