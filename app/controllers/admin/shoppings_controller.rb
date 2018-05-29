class Admin::ShoppingsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

  def index
  	@shoppings = Shopping.all
  end

  def new
  	@shopping = Shopping.new
  end

  def create
    @shopping = Shopping.new(shopping_params)
    if @shopping.save
      flash[:notice] = "product was successfully created"
      redirect_to admin_shoppings_path
    else
      flash.now[:alert] = "product was failed to create"
      render :new
    end
  end

  private

  def shopping_params
    params.require(:shopping).permit(:name, :description, :price)
  end
  
end
