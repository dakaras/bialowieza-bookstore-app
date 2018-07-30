class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :books, through: :list_items
end
