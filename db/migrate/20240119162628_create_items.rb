class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items, id: :uuid do |t|
      t.text :type, null: false
      t.text :identifier, null: false, limit: 20
      t.text :label, null: false
      t.text :description
      t.decimal :price, precision: 6, scale: 2, null: false

      t.timestamps
    end

    add_index :items, :type
    add_index :items, :identifier
    add_index :items, :label
    add_index :items, :price
  end
end
