Rails.application.routes.draw do
  resources :users
  root 'site#index'
  get '/welcome' => 'site#index'
  get '/about' => 'site#about'
  resources :list_items, only: [:create, :destroy, :index]
  resources :shopping_carts, only: [:show]
  resources :authors
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
