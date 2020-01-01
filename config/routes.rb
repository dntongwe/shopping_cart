Rails.application.routes.draw do
  root "products#index"
  resources :carts
  resources :cart_items
  resources :products
  resources :searches
  resources :categories
  resources :letters
  get 'current_cart', action: :show, controller: 'carts'
  #current_cart 'cart', :controller => 'carts', :action => 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
