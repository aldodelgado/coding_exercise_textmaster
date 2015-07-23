Rails.application.routes.draw do
  resources :products, only: [:index]
  resources :checkouts, only: [:new]

  root 'products#index'
end
