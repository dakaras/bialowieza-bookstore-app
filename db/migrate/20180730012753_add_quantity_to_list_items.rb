class AddQuantityToListItems < ActiveRecord::Migration[5.2]
  def change
    add_column :list_items, :quantity, :integer
  end
end