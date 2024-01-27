# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_27_024206) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_modifier_groups", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "item_id", null: false
    t.uuid "modifier_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_modifier_groups_on_item_id"
    t.index ["modifier_group_id"], name: "index_item_modifier_groups_on_modifier_group_id"
  end

  create_table "items", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "type", null: false
    t.text "identifier", null: false
    t.text "label", null: false
    t.text "description"
    t.decimal "price", precision: 6, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 0, null: false
    t.index ["identifier"], name: "index_items_on_identifier"
    t.index ["label"], name: "index_items_on_label"
    t.index ["price"], name: "index_items_on_price"
    t.index ["type"], name: "index_items_on_type"
  end

  create_table "menu_sections", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "menu_id", null: false
    t.uuid "section_id", null: false
    t.integer "display_order", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id", "section_id", "display_order"], name: "index_menu_sections_on_menu_id_and_section_id_and_display_order", unique: true
    t.index ["menu_id"], name: "index_menu_sections_on_menu_id"
    t.index ["section_id"], name: "index_menu_sections_on_section_id"
  end

  create_table "menus", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "identifier", null: false
    t.text "label", null: false
    t.text "state", null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_date"], name: "index_menus_on_end_date"
    t.index ["identifier"], name: "index_menus_on_identifier", unique: true
    t.index ["label"], name: "index_menus_on_label"
    t.index ["start_date"], name: "index_menus_on_start_date"
    t.index ["state"], name: "index_menus_on_state"
  end

  create_table "modifier_groups", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "identifier", null: false
    t.text "label", null: false
    t.integer "selection_required_min", null: false
    t.integer "selection_required_max", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier"], name: "index_modifier_groups_on_identifier"
    t.index ["label"], name: "index_modifier_groups_on_label"
  end

  create_table "modifiers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "item_id", null: false
    t.uuid "modifier_group_id", null: false
    t.integer "display_order", default: 0, null: false
    t.integer "default_quantity", default: 0, null: false
    t.decimal "price_override", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["display_order"], name: "index_modifiers_on_display_order"
    t.index ["item_id"], name: "index_modifiers_on_item_id"
    t.index ["modifier_group_id"], name: "index_modifiers_on_modifier_group_id"
  end

  create_table "section_items", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "section_id", null: false
    t.uuid "item_id", null: false
    t.integer "display_order", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["display_order"], name: "index_section_items_on_display_order"
    t.index ["item_id"], name: "index_section_items_on_item_id"
    t.index ["section_id"], name: "index_section_items_on_section_id"
  end

  create_table "sections", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "identifier", null: false
    t.text "label", null: false
    t.text "description"
    t.integer "display_order", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["display_order"], name: "index_sections_on_display_order"
    t.index ["identifier"], name: "index_sections_on_identifier"
    t.index ["label"], name: "index_sections_on_label"
  end

  add_foreign_key "item_modifier_groups", "items", on_delete: :cascade
  add_foreign_key "item_modifier_groups", "modifier_groups", on_delete: :cascade
  add_foreign_key "menu_sections", "menus", on_delete: :cascade
  add_foreign_key "menu_sections", "sections", on_delete: :cascade
  add_foreign_key "modifiers", "items", on_delete: :cascade
  add_foreign_key "modifiers", "modifier_groups", on_delete: :cascade
  add_foreign_key "section_items", "items", on_delete: :cascade
  add_foreign_key "section_items", "sections", on_delete: :cascade
end
