Moochify::Application.routes.draw do

  root 'home#show', as: :home

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users, :except => [:index]
  resources :equipment
  resources :orders, :only => [:index, :show, :create]

  resources :sessions
  resources :results, :except => [:create] 

  post 'results', to: 'results#index'

end
