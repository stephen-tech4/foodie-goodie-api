class CreateItemModifierGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :item_modifier_groups, id: :uuid do |t|
      t.references(:item, type: :uuid, null: false, foreign_key: {on_delete: :cascade})
      t.references(:modifier_group, type: :uuid, null: false, foreign_key: {on_delete: :cascade})

      t.timestamps
    end
  end
end
