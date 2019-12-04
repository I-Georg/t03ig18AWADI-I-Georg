Rails.application.routes.draw do

  resources :itemfor_carts
  resources :product_carts
  root 'shop#index', as: 'shop_index'
  resources :chocolate_bars
  resources :countries
 #get '/itemfor_carts/:id', to: 'itemfor_carts#show'
match '/itemfor_carts/:id', controller: 'itemfor_carts', action: 'show', via: 'post' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
