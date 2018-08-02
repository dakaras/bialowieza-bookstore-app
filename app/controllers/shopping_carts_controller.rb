class ShoppingCartsController < ApplicationController
  before_action :authorize
  def index
    @current_user.shopping_cart.list_items
  end

  def show
    @current_user.shopping_cart.list_items
  end

  def destroy
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
    @shopping_cart.clear
    redirect_to welcome_path
  end
end
