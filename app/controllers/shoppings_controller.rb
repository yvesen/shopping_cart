class ShoppingsController < ApplicationController
	before_action :set_shopping, only: [:show]

  def index 
  	@shoppings = Shopping.page(params[:page]).per(12)
  end

  def show
  end

  def add_to_cart
    @shopping = Shopping.find(params[:id])
    current_cart.add_cart_item(@shopping)

    redirect_to root_path
  end

  private

  def shopping_params
    params.require(:shopping).permit(:name, :description, :price, :image)
  end

  def set_shopping
  	@shopping = Shopping.find(params[:id])
  end

end
