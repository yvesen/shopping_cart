class Admin::ShoppingsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin
	before_action :set_shopping, only: [:show, :edit, :update, :destroy]

  def index
  	@shoppings = Shopping.page(params[:page]).per(10)
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

  def show
  end

  def edit  	
  end

  def update
    if @shopping.update(shopping_params)
      flash[:notice] = "product was successfully updated"
      redirect_to admin_shopping_path(@shopping)
    else
      flash.now[:alert] = "product was failed to update"
      render :edit
    end
  end

  def destroy
  	@shopping.destroy
  	redirect_to admin_shoppings_path
  	flash[:alert] = "product was deleted"
  end

  private

  def shopping_params
    params.require(:shopping).permit(:name, :description, :price, :image)
  end

  def set_shopping
  	@shopping = Shopping.find(params[:id])
  end
  
end
