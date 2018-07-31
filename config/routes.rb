Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root 'site#index'
  get '/welcome', to:  'site#index'
  get '/about', to: 'site#about'
  get '/new_user', to: 'users#new', as: 'signup'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :shopping_carts do
    resources :list_items, only: [:patch, :create, :destroy, :index]
  end
  resources :authors do
    resources :books, only: [:show]
  end
  resources :books, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
