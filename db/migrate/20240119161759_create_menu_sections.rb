class CreateMenuSections < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_sections, id: :uuid do |t|
      t.references(:menu, type: :uuid, null: false, foreign_key: {on_delete: :cascade})
      t.references(:section, type: :uuid, null: false, foreign_key: {on_delete: :cascade})

      t.integer :display_order, null: false, default: 0

      t.timestamps
    end

    add_index :menu_sections, [:menu_id, :section_id, :display_order], unique: true
  end
end
