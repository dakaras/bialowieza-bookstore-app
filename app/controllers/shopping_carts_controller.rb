class ShoppingCartsController < ApplicationController
  def new
    @shopping_cart = ShoppingCart.new 
  end
end
