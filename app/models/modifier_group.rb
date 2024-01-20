class ModifierGroup < ApplicationRecord
  self.table_name ="modifier_groups"

  def self.graphql_type
    Types::ModifierGroupType
  end
end
