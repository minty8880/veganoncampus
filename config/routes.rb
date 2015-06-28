Rails.application.routes.draw do
  get 'sign_up', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :campuses, only: [:index, :show]
  root to: 'high_voltage/pages#show', id: 'home'
end
