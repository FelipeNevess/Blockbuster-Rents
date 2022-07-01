Rails.application.routes.draw do
  root 'movies#index'

  devise_for :users, only: %i[sessions registrations passwords], path: '', path_names: {
    sign_in: 'session/login',
    registration: 'session/simple-register',
    sign_up: ''
  }

  resources :movies
end
