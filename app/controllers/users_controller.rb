class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      @shopping_cart = ShoppingCart.create(user_id: @user.id)
      redirect_to welcome_path, alert: "You have successfully created a new user account."
    else
      render 'users/new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
