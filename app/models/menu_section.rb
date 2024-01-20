class MenuSection < ApplicationRecord
  self.table_name = "menu_sections"

  belongs_to :menu, class_name: "Menu"
  belongs_to :section, class_name: "Section"

  validates :display_order, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
