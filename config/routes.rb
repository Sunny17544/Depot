Rails.application.routes.draw do
  
  resources :line_items
  resources :carts
  resources :products

  root 'shop#index', as: 'shop_index'
  
end
