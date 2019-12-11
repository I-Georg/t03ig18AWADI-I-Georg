Rails.application.routes.draw do
  #devise_for :users
devise_for :users

  resources :orders
  resources :line_items
  resources :carts
  root 'shop#index', as: 'shop_index'
  resources :chocolate_bars
  resources :countries
resources :users
get "/profile" => "user#show"
get "/maps" => "map#index"
get "/livedata" => "livefinddata#index"
get "/search" => "shop#search"
get "/graphcomparison" => "charts#display"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
