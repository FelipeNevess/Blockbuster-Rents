Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'

  resources :movies
end
