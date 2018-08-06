class ListItem < ApplicationRecord
  belongs_to :book
  belongs_to :shopping_cart

  def book_title
    self.book.title
  end

  def author_name
    self.book.author.name
  end

  def order_quantity
    self.quantity
  end

  def add_to_order
    self.quantity += 1
  end
end
