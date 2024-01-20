class CreateSectionItems < ActiveRecord::Migration[7.0]
  def change
    create_table :section_items, id: :uuid do |t|
      t.references(:section, type: :uuid, null: false, foreign_key: {on_delete: :cascade})
      t.references(:item, type: :uuid, null: false, foreign_key: {on_delete: :cascade})

      t.integer :display_order, null: false, default: 0

      t.timestamps
    end

    add_index :section_items, :display_order
  end
end
