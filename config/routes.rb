Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemon
  patch 'capture', to: 'pokemon', as: :capture
end
