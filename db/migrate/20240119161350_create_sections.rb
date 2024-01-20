class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections, id: :uuid do |t|
      t.text :identifier, null: false, limit: 20
      t.text :label, null: false
      t.text :description
      t.integer :display_order, null: false, default: 0

      t.timestamps
    end

    add_index :sections, :identifier
    add_index :sections, :label
    add_index :sections, :display_order
  end
end
