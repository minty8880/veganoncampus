Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'
  resources :campuses, only: [:index, :show]
end
