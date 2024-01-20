class SectionItem < ApplicationRecord
  self.table_name = "section_items"

  belongs_to :section, class_name: "Section"
  belongs_to :item, class_name: "Item"

  validates :display_order, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
