Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemon', as: :capture
  patch 'damage', to: 'pokemon', as: :damage
  get 'pokemons/new', to: 'pokemon#new', as: 'new'
  post 'pokemons', to: "pokemon#create"
end
