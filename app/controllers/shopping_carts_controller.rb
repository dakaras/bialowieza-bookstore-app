class ShoppingCartsController < ApplicationController

  def show
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
  end
end
# def show
#     if params[:id].to_i == current_user.id
#       redirect_to user_dishes_path(current_user)
#     else
#       @list = List.find_by(id: params[:id])
#     end
# end
