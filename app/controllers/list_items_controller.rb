class ListItemsController < ApplicationController
  before_action :authorize

  def index #show books added to current user's shopping cart
  end

  def create #adds book to current user's shopping cart

  end

  def patch #updates quantity of books or deletes them

  end

  def destroy #clears shopping cart of current user 

  end
end
