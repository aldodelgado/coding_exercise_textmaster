Rails.application.routes.draw do
  resources :products, only: [:index]
  resources :checkouts

  root 'products#index'
end
