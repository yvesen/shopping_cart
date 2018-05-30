class ShoppingsController < ApplicationController


  def index 
  	@shoppings = Shopping.page(params[:page]).per(12)
  end

  def add_to_cart
    @shopping = Shopping.find(params[:id])
    current_cart.add_cart_item(@shopping)

    redirect_to root_path
  end


end
