module Types
  class ItemType < Types::BaseObject
    graphql_name "Item"

    field :id, ID, null: false
    field :type, String, null: false
    field :identifier, String, null: false
    field :label, String, null: false
    field :description, String, null: true

    field :price, Float, null: false
    field :quantity, Integer, null:false

    field :is_sold_out, Boolean, null: false

    field :modifiers, [Modifier.graphql_type], null: false

    def is_sold_out
      object.is_sold_out?
    end
  end
end