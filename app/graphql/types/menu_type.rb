module Types
  class MenuType < Types::BaseObject
    graphql_name "Menu"

    field :id, ID, null: false
    field :identifier, String, null: false
    field :label, String, null: false
    field :state, String, null: false

    field :start_date, GraphQL::Types::ISO8601Date, null: false
    field :end_date, GraphQL::Types::ISO8601Date, null: true

    field :sections, [Section.graphql_type], null: false
  end
end