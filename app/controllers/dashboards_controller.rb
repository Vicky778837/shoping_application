class DashboardsController < ApplicationController
  def index
    @products = Product.where(["name Like?","%#{params[:search]}"])
  
 
end

end
