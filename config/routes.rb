Moochify::Application.routes.draw do

  get "orders/index"
  get "orders/show"
  get "orders/create"
  root 'home#show', as: :home

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :equipment
  resources :sessions

end
