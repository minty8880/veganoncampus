Rails.application.routes.draw do
  get 'sign_up', to: 'users#new'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :campuses, only: [:index, :show]
  root to: 'high_voltage/pages#show', id: 'home'
end
