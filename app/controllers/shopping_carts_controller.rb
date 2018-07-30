class ShoppingCartsController < ApplicationController
  def index
    @shopping_cart = ListItem.all
  end

  def new
    @shopping_cart = ShoppingCart.find_by(user_id: params[:user_id])
    @shopping_cart.clear
    redirect_to welcome_path
  end

  def show
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
  end
end
