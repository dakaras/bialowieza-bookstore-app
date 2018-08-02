class ListItemsController < ApplicationController
  before_action :authorize

  def index #show books added to current user's shopping cart

  end

  def new #adds book to current user's shopping cart
    @list_item =  @current_user.shopping_cart.list_items.create(book_id: params[:book_id])
    @current_user.shopping_cart.add_item(@list_item)
    cart = @current_user.shopping_cart
    redirect_to  shopping_cart_path(cart), alert: "You have added a book to your Shopping Cart!"
  end

  def show
    @current_user.shopping_cart.list_items
  end
end
