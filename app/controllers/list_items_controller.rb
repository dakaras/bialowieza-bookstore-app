class ListItemsController < ApplicationController
  before_action :authorize
  before_action :set_cart
  before_action :set_list_item, only: [:destroy]

  def new
    @list_item = ListItem.new
    @books = Book.all
  end

  def create
    list_item = @set_cart.list_items.build(book_id: params[:book_id])
    if list_item.save
      redirect_to shopping_carts_path, alert: "Book successfully added to shopping cart"
    else
      redirect_to shopping_cart_path(current_user.shopping_cart), alert: "Unable to add book to shopping cart"
    end
  end

  def destroy
    @list_item.destroy
    redirect_to shopping_carts_path
  end

  private
  def set_cart
    @set_cart = current_user.shopping_cart
  end
  helper_method :shopping_cart

  def set_list_item
    @list_item = ListItem.find_by(shopping_cart_id: @shopping_cart.id, book_id: params[:book_id], book_ids:[])
  end
end
