Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'shop#index', as: 'shop_index'
  resources :chocolate_bars
  resources :countries
get "/maps" => "map#index"
get "/livedata" => "livefinddata#index"
get "/search" => "shop#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
