Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "shoppings#index"

  namespace :admin do
    root "shoppings#index"
  end

end
