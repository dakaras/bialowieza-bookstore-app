class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :books, through: :list_items

  def add_book(book_id)
    book = self.list_items.create(book_id: book_id)
    @book = Book.find_by(id: book_id)
    book.quantity += 1
  end

end
