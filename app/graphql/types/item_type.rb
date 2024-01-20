module Types
  class ItemType < Types::BaseObject
    graphql_name "Item"

    field :type, String, null: false
    field :identifier, String, null: false
    field :label, String, null: false
    field :description, String, null: true

    field :price, Float, null: false

    field :modifiers, [Modifier.graphql_type], null: false
  end
end