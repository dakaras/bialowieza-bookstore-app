class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :books, through: :list_items

  def add_item(book_id)
    self.list_items.create(book_id: book_id)
    @book = Book.find_by(id: book_id)
  end
 
end
