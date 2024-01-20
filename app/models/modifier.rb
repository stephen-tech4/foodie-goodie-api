class Modifier < ApplicationRecord
  self.table_name = "modifiers"

  belongs_to :item, class_name: "Item"
  belongs_to :modifier_group, class_name: "ModifierGroup"

  validates :display_order, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :price_override, presence: true, numericality: {greater_than_or_equal_to: 0}

  def self.graphql_type
    Types::ModifierType
  end

  delegate :identifier, to: :modifier_group
  delegate :label, to: :modifier_group
end
