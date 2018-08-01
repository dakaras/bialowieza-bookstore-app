Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'

  root 'site#index'
  get '/welcome', to:  'site#index'
  get '/about', to: 'site#about'
  get '/new_user', to: 'users#new', as: 'signup'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :shopping_carts
  resources :list_items
  post '/list_items/new/:id', to: 'listitems#create', as: 'add_book'
  resources :authors do
    resources :books, only: [:show]
  end
  resources :books, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
