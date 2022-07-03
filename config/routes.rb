Rails.application.routes.draw do
  root 'movies#index'

  devise_for :users, only: %i[sessions registrations passwords], path: '', path_names: {
    sign_in: 'session/login',
    registration: 'session/simple-register',
    sign_up: ''
  }

  resources :movies

  get 'accounts/register'
  get 'accounts/change_password'
  get 'accounts/favorites'

  patch 'profile_name', to: 'users#update_name'
  patch 'profile_password', to: 'users#update_password'
end
