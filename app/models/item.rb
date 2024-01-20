class Item < ApplicationRecord
  self.table_name = "items"
  self.inheritance_column = :_type_disabled

  has_many :item_modifier_groups, class_name: "ItemModifierGroup", dependent: :destroy
  has_many :modifier_groups, class_name: "ModifierGroup", through: :item_modifier_groups

  has_many :modifiers, class_name: "Modifier", dependent: :destroy

  validates :type, :identifier, :label, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}

  def self.graphql_type
    Types::ItemType
  end
end
