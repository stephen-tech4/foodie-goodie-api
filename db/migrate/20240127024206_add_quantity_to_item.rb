class AddQuantityToItem < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :quantity, :integer, null: false, default: 0
  end
end
