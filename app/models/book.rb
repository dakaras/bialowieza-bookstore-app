class Book < ApplicationRecord
  belongs_to :author
  has_many :list_items
  has_many :shopping_carts, through: :list_items
end
