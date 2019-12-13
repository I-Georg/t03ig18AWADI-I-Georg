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
authenticate :user do
get "/profile" => "user#show"
end
get "/maps" => "map#index"
get "/livedata" => "livefinddata#index"

get "/search" => "shop#search"
get "/graphcomparison" => "charts#display"
#if :user
get "/admin" => "admin#index"
get "/admin" => "admin#destroy"
#end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
