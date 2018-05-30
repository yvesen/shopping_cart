Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "shoppings#index"

  resources :shoppings, only: [:index, :show] do
  	post :add_to_cart, on: :member
  end

  resources :cart

  namespace :admin do
  	resources :shoppings
    root "shoppings#index"
  end

end
