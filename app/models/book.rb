class Book < ApplicationRecord
  belongs_to :author
  has_many :list_items
  has_many :shopping_carts, through: :list_items
  accepts_nested_attributes_for :author
end
