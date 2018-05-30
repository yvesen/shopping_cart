class ShoppingsController < ApplicationController


  def index 
  	@shoppings = Shopping.page(params[:page]).per(12)
  end



end
