Rails.application.routes.draw do
  
  resources :payments
  resources :order_items
  resources :orders
  resources :line_items
  resources :carts
  resources :products

  root 'shop#index', as: 'shop_index'
  
end
