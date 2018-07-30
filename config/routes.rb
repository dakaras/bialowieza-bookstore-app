Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  root 'site#index'
  get '/welcome' => 'site#index'
  get '/about' => 'site#about'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :shopping_carts do
    resources :list_items, only: [:create, :destroy, :index]
  end
  resources :authors do
    resources :books, only: [:show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
