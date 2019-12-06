Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'shop#index', as: 'shop_index'
  resources :chocolate_bars
  resources :countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
