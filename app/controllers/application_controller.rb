class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_cart

  private

  def current_cart
    @cart || set_cart # return @cart if @cart exist, or call set_cart
  end

  def set_cart
    #假設 session 內已經有 cart_id
    if session[:cart_id]
      @cart = Cart.find_by(id: session[:cart_id])
    end
    #沒有 car_id 所以做一個
    @cart ||= Cart.create
    #跟 rails 說 想要存取 cart 的資訊
    session[:cart_id] = @cart.id
    @cart
  end

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end
  
end
