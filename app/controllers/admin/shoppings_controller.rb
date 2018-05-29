class Admin::ShoppingsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

  def index
  	@shoppings = Shopping.all
  end
  
end
