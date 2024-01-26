class Section < ApplicationRecord
  self.table_name = "sections"

  has_many :section_items, -> {order(display_order: :asc)}, class_name: "SectionItem", dependent: :destroy
  has_many :items, -> {select("items.*, section_items.display_order").distinct}, class_name: "Item", through: :section_items

  validates :label, presence: true
  validates :identifier, presence: true, length: {minimum: 3, maximum: 20}
  validates :display_order, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  def self.graphql_type
    Types::SectionType
  end
end
