module Types
  class SectionType < Types::BaseObject
    graphql_name "Section"

    field :identifier, String, null: false
    field :label, String, null: false
    field :description, String, null: true
    field :display_order, Integer, null: false

    field :items, [Item.graphql_type], null: false
  end
end