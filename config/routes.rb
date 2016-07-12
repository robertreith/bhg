Rails.application.routes.draw do
  resources :units
  resources :properties
  resources :users, only: [:show, :new, :create, :edit, :update]

  get    'admin'   => 'sessions#new'
  post   'admin'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  root 'properties#index'
end
