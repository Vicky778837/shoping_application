class UsersController < ApplicationController
  def profile
    @users = current_user
  end
end
