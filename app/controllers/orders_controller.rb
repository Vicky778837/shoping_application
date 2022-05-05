class OrdersController < ApplicationController
  def index
     @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create 
    #byebug
      @current_cart.line_items.each do |item|
      @order.line_items << item
     item.cart_id = nil
       @order.save
  end

  
     Cart.destroy(session[:cart_id])
     session[:cart_id] = nil
     redirect_to root_path
  end
    private
    def orders_params
      #param.require(:order).permit(name:,:email,:address,:pay_method)
      params.require(:order).permit(:name, :email, :address, :pay_method)
   end
end