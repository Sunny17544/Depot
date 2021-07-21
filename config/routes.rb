Rails.application.routes.draw do
  
  devise_for :users
  resources :payments
  resources :order_items
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  put "/line_items_dec", to: "line_items#decrease", as: "line_items_dec"
  
  resources :support_requests, only: [ :index, :update ]

  root 'shop#index', as: 'shop_index'
  
end
