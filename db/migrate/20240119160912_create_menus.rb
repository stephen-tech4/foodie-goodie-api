class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus, id: :uuid do |t|
      t.text :identifier, null: false, limit: 20
      t.text :label, null: false
      t.text :state, null: false
      t.date :start_date, null: false
      t.date :end_date

      t.timestamps
    end

    add_index :menus, :identifier, unique: true
    add_index :menus, :label
    add_index :menus, :state
    add_index :menus, :start_date
    add_index :menus, :end_date
  end
end
