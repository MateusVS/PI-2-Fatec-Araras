Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  resources :users

  resources :bim_calculation_histories, only: [:index, :create, :update, :destroy]
end
