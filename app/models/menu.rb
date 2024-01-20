class Menu < ApplicationRecord
  self.table_name = "menus"

  include StatePredicate

  has_many :menu_sections, -> { order(display_order: :asc) },  class_name: "MenuSection", dependent: :destroy
  has_many :sections, -> { order(display_order: :asc) }, class_name: "Section", through: :menu_sections

  validates :label, :state, :start_date, presence: true
  validates :identifier, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}

  state_predicate_for :state, :active, :expired

  def self.graphql_type
    Types::MenuType
  end
end
