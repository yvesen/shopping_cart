class ShoppingsController < ApplicationController


  def index 
  	@shoppings = Shopping.page(params[:page]).per(9)
  end



end
