Rails.application.routes.draw do
  
  resources :payments
  resources :order_items
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  put "/line_items_dec", to: "line_items#decrease", as: "line_items_dec"
  
  root 'shop#index', as: 'shop_index'
  
end
