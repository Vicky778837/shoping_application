class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end
def show
  @product = Product.find(params[:id])
end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to root_path, status: :see_other
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to "/"
    else
      render :edit, status: :unprocessable_entity
    end
  end
def add_to_cart
 #byebug
  current_cart = current_user.cart.present? ? current_user.cart : Cart.create(:user_id => current_user.id)
  if current_cart
    @cart_items = LineItem.create!(user_id: current_user.id ,product_id: params[:id],cart_id: current_cart.id, price: params[:price],quantity:1,order_id:1 )
    redirect_to line_items_path

   end
end

private
    def product_params
      params.require(:product).permit(:name, :price,:description,:avatar)
    end
end

