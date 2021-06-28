Rails.application.routes.draw do
  
  resources :products

  root 'shop#index', as: 'shop_index'
  
end
