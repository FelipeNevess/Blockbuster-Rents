Rails.application.routes.draw do
  root 'movies#index'

  devise_for :users, only: %i[sessions registrations passwords]

  resources :movies
end
