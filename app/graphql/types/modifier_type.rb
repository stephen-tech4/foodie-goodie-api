module Types
  class ModifierType < Types::BaseObject
    graphql_name "Modifier"

    field :id, ID, null: false
    field :modifier_group, ModifierGroup.graphql_type, null: false
    field :identifier, String, null: false
    field :label, String, null: false

    field :display_order, Integer, null: false
    field :default_quantity, Integer, null: false
    field :price_override, Integer, null: false
  end
end