class ListItemsController < ApplicationController
  before_action :authorize

  def index #show books added to current user's shopping cart

  end

  def new #adds book to current user's shopping cart
    @list_item =  @current_user.shopping_cart.list_items.create(book_id: params[:book_id])
  end

  def patch #updates quantity of books or deletes them

  end

  def destroy #removes list_item from shopping cart of current user

  end
end
