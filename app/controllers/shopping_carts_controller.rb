class ShoppingCartsController < ApplicationController
  before_action :authorize
  def index
    set_cart.books
  end

  def new
    @lastest_book_added
    redirect_to user_shopping_cart
  end

  def show
    @lastest_book_added
  end

  def checkout
    @set_cart.clear
    redirect_to shopping_cart_path(current_user.id)
  end

  private
  def set_cart
    @set_cart = @current_user.shopping_cart.find(params[:id])
  end
  helper_method :set_cart

  def lastest_book_added
    @lastest_book_added = current_user.shopping_cart.books.first
  end
  helper_method :lastest_book_added

  def remove_list_item
    @set_cart.line_items.each do |list_item|
      @list_item = Item.find(book.book_id)
      @list_item.quantity -= 1
      @list_item.save
    end
  end
end
