class AddsController < ApplicationController
  def index
  end

  def new
    @add = Address.new
  end


  def create
    @user = current_user
    @add = @user.addresses.new(address_params)
    if @add.save
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
    def address_params
      params.require(:address).permit(:street_address, :city,:state,:country,:pin_code,:user_id)
    end
end
