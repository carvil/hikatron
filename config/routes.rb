Rails.application.routes.draw do
  root 'home#index'

  resources :trails, only: [:index, :show]
end
