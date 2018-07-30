class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.integer :shopping_cart_id
      t.integer :book_id

      t.timestamps null: false 
    end
  end
end
