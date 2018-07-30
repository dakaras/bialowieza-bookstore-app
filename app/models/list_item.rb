class ListItem < ApplicationRecord
  belongs_to :book
  belongs_to :shopping_cart
end
