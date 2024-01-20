class ItemModifierGroup < ApplicationRecord
  self.table_name = "item_modifier_groups"

  belongs_to :item, class_name: "Item"
  belongs_to :modifier_group, class_name: "ModifierGroup"
end
