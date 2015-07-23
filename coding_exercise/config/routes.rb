Rails.application.routes.draw do
  resources :products
  resources :baskets

  root 'products#index'
end
