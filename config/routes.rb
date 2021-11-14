Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  resources :users
  resources :specialists

  resources :bim_calculation_histories, only: [:index, :show, :create, :destroy]
end
