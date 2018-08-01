class ShoppingCartsController < ApplicationController
  before_action :authorize
  def index
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
  end

  def new
    shopping_cart = ShoppingCart.find_by(id: params[:id])
    @list_item = shopping_cart.create_list_item
  end

  def show
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
  end

  def destroy
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
    @shopping_cart.clear
    redirect_to welcome_path
  end
end
