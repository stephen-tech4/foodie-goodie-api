module Seeds
  module SeedModifierGroup
    module_function

    def seed
      ModifierGroup.create(
        identifier: "CHEESE",
        label: "Cheese",
        selection_required_min: 0, # Optional
        selection_required_max: 2
      )

      ModifierGroup.create(
        identifier: "TOMATO",
        label: "Tomato",
        selection_required_min: 0, # Optional
        selection_required_max: 2
      )

      ModifierGroup.create(
        identifier: "SIZE_PIZZA_10",
        label: "Size 10\"",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )

      ModifierGroup.create(
        identifier: "SIZE_PIZZA_12",
        label: "Size 12\"",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )

      ModifierGroup.create(
        identifier: "SIZE_PIZZA_14",
        label: "Size 14\"",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )

      ModifierGroup.create(
        identifier: "SIZE_SPAGHETTI_S",
        label: "Size spaghetti small",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )

      ModifierGroup.create(
        identifier: "SIZE_SPAGHETTI_M",
        label: "size spaghetti medium",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )

      ModifierGroup.create(
        identifier: "SIZE_SPAGHETTI_L",
        label: "size spaghetti large",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )

      ModifierGroup.create(
        identifier: "GARLIC",
        label: "Garlic",
        selection_required_min: 0, # Optional
        selection_required_max: 1
      )
    end
  end
end