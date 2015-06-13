Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :campuses, only: [:index, :show]
end
