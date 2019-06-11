Rails.application.routes.draw do
  root 'home#index'
  get '/home', to: 'home#index'
  resources :items
  resources :storage_containers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
