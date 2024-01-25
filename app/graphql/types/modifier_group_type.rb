module Types
  class ModifierGroupType < Types::BaseObject
    graphql_name "ModifierGroup"

    field :id, ID, null: false
    field :identifier, String, null:false
    field :label, String, null: false
    field :selection_required_min, Integer, null: false
    field :selection_required_max, Integer, null: false
  end
end