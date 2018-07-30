Rails.application.routes.draw do
  root 'site#index'
  get '/welcome' => 'site#index'
  get '/about' => 'site#about'
  resources :list_items
  resources :shopping_carts
  resources :authors
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
