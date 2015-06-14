Rails.application.routes.draw do
  get 'sign_up', to: 'users#new', path: 'register' 
  get 'sign_in', to: 'sessions#new', path: 'login' 
  get 'sign_out', to: 'sessions#destroy', path: 'logout' 
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :campuses, only: [:index, :show]
  root to: 'high_voltage/pages#show', id: 'home'
end
