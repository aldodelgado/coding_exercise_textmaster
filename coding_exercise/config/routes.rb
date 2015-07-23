Rails.application.routes.draw do
  resources :products, only: [:index]
  resources :checkouts, only: [:add]

  root 'products#index'
end
