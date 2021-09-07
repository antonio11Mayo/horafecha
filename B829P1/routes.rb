Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'mayita', controller: :mayita, action: :index
  resources :hellos 
  resources :cars
  resources :motos
  resources :articles
  resources :products
   end
