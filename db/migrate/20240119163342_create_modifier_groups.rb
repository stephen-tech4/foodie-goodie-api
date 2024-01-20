class CreateModifierGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :modifier_groups, id: :uuid do |t|
      t.text :identifier, null: false, limit: 20
      t.text :label, null: false
      t.integer :selection_required_min, null: false
      t.integer :selection_required_max, null: false

      t.timestamps
    end

    add_index :modifier_groups, :identifier
    add_index :modifier_groups, :label
  end
end
