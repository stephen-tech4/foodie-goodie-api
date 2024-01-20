class CreateModifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :modifiers, id: :uuid do |t|
      t.references(:item, type: :uuid, null: false, foreign_key: {on_delete: :cascade})
      t.references(:modifier_group, type: :uuid, null: false, foreign_key: {on_delete: :cascade})

      t.integer :display_order, null: false, default: 0
      t.integer :default_quantity, null: false, default: 0
      t.decimal :price_override, null: false

      t.timestamps
    end

    add_index :modifiers, :display_order
  end
end
