class LineItemsController < ApplicationController

  def index
    #byebug
    # @line_items = LineItem.select("line_items.id", 'line_items.price','products.name').joins('join products on products.id = line_items.product_id')
    @line_items = LineItem.all

  end

  def show
    @line_item = LineItem.find_by(id: params[:id])
  end

  def destroy
       @line_item = LineItem.find(params[:id])
      if @line_item.destroy
        redirect_to line_item_path status: :see_other
      end
  end

    def add_quantity
       @line_item = LineItem.find(params[:id])
       @line_item.quantity += 1
        if  @line_item.save
          redirect_to  line_items_path
       end
    end

    def reduce_quantity
       @line_item = LineItem.find(params[:id])
       if @line_item.quantity > 1
          @line_item.quantity -= 1
       end
         @line_item.save
         redirect_to  line_items_path
   end

  private
   def cart_params
     params.require(:line_item).permit(:user_id,:product_id,:cart_id,:price,:quantity,:total_price)
   end

end