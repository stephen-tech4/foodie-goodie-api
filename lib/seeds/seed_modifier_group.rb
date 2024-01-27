module Seeds
  module SeedModifierGroup
    module_function

    MODIFIER_GROUPS = [
      {
        identifier: "CHEESE",
        label: "Cheese",
        selection_required_min: 0, # Optional
        selection_required_max: 2
      },
      {
        identifier: "TOMATO",
        label: "Tomato",
        selection_required_min: 0, # Optional
        selection_required_max: 2
      },
      {
        identifier: "SIZE_PIZZA_10",
        label: "Size 10\"",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
      {
        identifier: "SIZE_PIZZA_12",
        label: "Size 12\"",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
      {
        identifier: "SIZE_PIZZA_14",
        label: "Size 14\"",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
      {
        identifier: "SIZE_SPAGHETTI_S",
        label: "Size spaghetti small",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
      {
        identifier: "SIZE_SPAGHETTI_M",
        label: "size spaghetti medium",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
      {
        identifier: "SIZE_SPAGHETTI_L",
        label: "size spaghetti large",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
      {
        identifier: "GARLIC",
        label: "Garlic",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      },
    ].freeze

    def seed
      MODIFIER_GROUPS.each do |modifier_group|
        ModifierGroup.create(modifier_group)
      end
    end
  end
end