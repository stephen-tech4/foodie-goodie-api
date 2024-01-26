module Seeds
  module SeedItems
    module_function

    def seed
      seed_pizza_items
      seed_spaghetti_items
    end

    def seed_pizza_items
      pizza_menu = Menu.find_by(identifier: "PIZZA")
      tomato_modifier_group = ModifierGroup.find_by(identifier: "TOMATO")
      size_10_modifier_group = ModifierGroup.find_by(identifier: "SIZE_PIZZA_10")
      size_12_modifier_group = ModifierGroup.find_by(identifier: "SIZE_PIZZA_12")
      size_14_modifier_group = ModifierGroup.find_by(identifier: "SIZE_PIZZA_14")
      signature_section = pizza_menu.sections.find_by(identifier: "SIGNATURE")
      classic_section = pizza_menu.sections.find_by(identifier: "CLASSIC")
      specialty_section = pizza_menu.sections.find_by(identifier: "GOURMET")

      seed_signature_pizza_items(signature_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      seed_classic_pizza_items(classic_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      seed_gourmet_pizza_items(specialty_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
    end

    def seed_signature_pizza_items(signature_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      chicken_pizza_item = Item.create(
        type: "Signature Pizza",
        identifier: "BBQ_CHICKEN",
        label: "Spicy BBQ Chicken Pizza",
        description: "A fiery twist on our classic BBQ chicken pizza with a spicy kick.",
        price: BigDecimal("15.90")
      )
      SectionItem.create(
        section:signature_section,
        item: chicken_pizza_item,
        display_order: 0
      )

      # Tomato option
      ItemModifierGroup.create(
        item:chicken_pizza_item,
        modifier_group: tomato_modifier_group
      )
      Modifier.create(
        item: chicken_pizza_item,
        modifier_group: tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      ItemModifierGroup.create(
        item:chicken_pizza_item,
        modifier_group: size_10_modifier_group
      )
      Modifier.create(
        item: chicken_pizza_item,
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      ItemModifierGroup.create(
        item:chicken_pizza_item,
        modifier_group: size_12_modifier_group
      )
      Modifier.create(
        item: chicken_pizza_item,
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      ItemModifierGroup.create(
        item:chicken_pizza_item,
        modifier_group: size_14_modifier_group
      )
      Modifier.create(
        item: chicken_pizza_item,
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )

      mediterranean_item = Item.create(
        type: "Signature Pizza",
        identifier: "MEDITERRANEAN_VEGGIE",
        label: "Mediterranean Veggie Pizza",
        description: "Fresh Mediterranean flavors come to life with a delightful array of veggies and herbs.",
        price: BigDecimal("14.90")
      )
      SectionItem.create(
        section:signature_section,
        item: mediterranean_item,
        display_order: 1
      )

      # Tomato option
      ItemModifierGroup.create(
        item:mediterranean_item,
        modifier_group: tomato_modifier_group
      )
      Modifier.create(
        item: mediterranean_item,
        modifier_group: tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      ItemModifierGroup.create(
        item:mediterranean_item,
        modifier_group: size_10_modifier_group
      )
      Modifier.create(
        item: mediterranean_item,
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      ItemModifierGroup.create(
        item:mediterranean_item,
        modifier_group: size_12_modifier_group
      )
      Modifier.create(
        item: mediterranean_item,
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      ItemModifierGroup.create(
        item:mediterranean_item,
        modifier_group: size_14_modifier_group
      )
      Modifier.create(
        item: mediterranean_item,
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_classic_pizza_items(classic_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      margherita_pizza_item = Item.create(
        type: "Classic Pizza",
        identifier: "MARGHERITA",
        label: "Margherita Pizza",
        description: "A timeless classic, featuring fresh tomatoes, mozzarella cheese, and basil leaves on a thin, crispy crust.",
        price: BigDecimal("18.90")
      )
      SectionItem.create(
        section:classic_section,
        item: margherita_pizza_item,
        display_order: 0
      )

      # Tomato option
      ItemModifierGroup.create(
        item:margherita_pizza_item,
        modifier_group: tomato_modifier_group
      )
      Modifier.create(
        item: margherita_pizza_item,
        modifier_group: tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      ItemModifierGroup.create(
        item:margherita_pizza_item,
        modifier_group: size_10_modifier_group
      )
      Modifier.create(
        item: margherita_pizza_item,
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      ItemModifierGroup.create(
        item:margherita_pizza_item,
        modifier_group: size_12_modifier_group
      )
      Modifier.create(
        item: margherita_pizza_item,
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 1,
        price_override: 5
      )

      ItemModifierGroup.create(
        item:margherita_pizza_item,
        modifier_group: size_14_modifier_group
      )
      Modifier.create(
        item: margherita_pizza_item,
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_gourmet_pizza_items(specialty_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      truffle_mushroom_pizza_item = Item.create(
        type: "Gourmet Pizza",
        identifier: "TRUFFLE_MUSHROOM",
        label: "Truffle Mushroom Pizza",
        description: "Indulge in luxury with this gourmet pizza featuring truffle-infused mushrooms, fontina cheese, and a drizzle of truffle oil.",
        price: BigDecimal("19.90")
      )
      SectionItem.create(
        section:specialty_section,
        item: truffle_mushroom_pizza_item,
        display_order: 0
      )

      # Tomato option
      ItemModifierGroup.create(
        item:truffle_mushroom_pizza_item,
        modifier_group: tomato_modifier_group
      )
      Modifier.create(
        item: truffle_mushroom_pizza_item,
        modifier_group: tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      ItemModifierGroup.create(
        item:truffle_mushroom_pizza_item,
        modifier_group: size_10_modifier_group
      )
      Modifier.create(
        item: truffle_mushroom_pizza_item,
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      ItemModifierGroup.create(
        item:truffle_mushroom_pizza_item,
        modifier_group: size_12_modifier_group
      )
      Modifier.create(
        item: truffle_mushroom_pizza_item,
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 1,
        price_override: 5
      )

      ItemModifierGroup.create(
        item:truffle_mushroom_pizza_item,
        modifier_group: size_14_modifier_group
      )
      Modifier.create(
        item: truffle_mushroom_pizza_item,
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_spaghetti_items
      spaghetti_menu = Menu.find_by(identifier: "SPAGHETTI")
      cheese_modifier_group = ModifierGroup.find_by(identifier: "CHEESE")
      size_s_modifier_group = ModifierGroup.find_by(identifier: "SIZE_SPAGHETTI_S")
      size_m_modifier_group = ModifierGroup.find_by(identifier: "SIZE_SPAGHETTI_M")
      size_l_modifier_group = ModifierGroup.find_by(identifier: "SIZE_SPAGHETTI_L")
      garlic_modifier_group = ModifierGroup.find_by(identifier: "GARLIC")
      specialty_section = spaghetti_menu.sections.find_by(identifier: "SPECIALTY")
      classic_section = spaghetti_menu.sections.find_by(identifier: "CLASSIC")

      seed_specialty_spaghetti_items(specialty_section, cheese_modifier_group, size_s_modifier_group, size_m_modifier_group, size_l_modifier_group, garlic_modifier_group)
      seed_classic_spaghetti_items(classic_section, cheese_modifier_group, size_s_modifier_group, size_m_modifier_group, size_l_modifier_group, garlic_modifier_group)
    end

    def seed_specialty_spaghetti_items(specialty_section, cheese_modifier_group, size_s_modifier_group, size_m_modifier_group, size_l_modifier_group, garlic_modifier_group)
      alfredo_item = Item.create(
        type: "Specialty Spaghetti",
        identifier: "LOBSTER_SHRIMP",
        label: "Lobster and Shrimp Alfredo",
        description: "A luxurious dish featuring succulent lobster and shrimp tossed in a creamy Alfredo sauce over perfectly cooked spaghetti.",
        price: BigDecimal("24.90")
      )
      SectionItem.create(
        section: specialty_section,
        item: alfredo_item,
        display_order: 0
      )

      # Cheese option
      ItemModifierGroup.create(
        item:alfredo_item,
        modifier_group: cheese_modifier_group
      )
      Modifier.create(
        item: alfredo_item,
        modifier_group: cheese_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Garlic option
      ItemModifierGroup.create(
        item:alfredo_item,
        modifier_group: garlic_modifier_group
      )
      Modifier.create(
        item: alfredo_item,
        modifier_group: garlic_modifier_group,
        display_order: 1,
        default_quantity: 0,
        price_override: 2
      )

      # Size options
      ItemModifierGroup.create(
        item:alfredo_item,
        modifier_group: size_s_modifier_group
      )
      Modifier.create(
        item: alfredo_item,
        modifier_group: size_s_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      ItemModifierGroup.create(
        item:alfredo_item,
        modifier_group: size_m_modifier_group
      )
      Modifier.create(
        item: alfredo_item,
        modifier_group: size_m_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      ItemModifierGroup.create(
        item:alfredo_item,
        modifier_group: size_l_modifier_group
      )
      Modifier.create(
        item: alfredo_item,
        modifier_group: size_l_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_classic_spaghetti_items(classic_section, cheese_modifier_group, size_s_modifier_group, size_m_modifier_group, size_l_modifier_group, garlic_modifier_group)
      bolognese_item = Item.create(
        type: "Classic Spaghetti",
        identifier: "BOLOGNESE",
        label: "Spaghetti Bolognese",
        description: "A timeless classic with rich, slow-cooked Bolognese sauce made with ground beef, tomatoes, and aromatic herbs served over al dente spaghetti.",
        price: BigDecimal("18.90")
      )
      SectionItem.create(
        section: classic_section,
        item: bolognese_item,
        display_order: 0
      )

      # Cheese option
      ItemModifierGroup.create(
        item:bolognese_item,
        modifier_group: cheese_modifier_group
      )
      Modifier.create(
        item: bolognese_item,
        modifier_group: cheese_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Garlic option
      ItemModifierGroup.create(
        item:bolognese_item,
        modifier_group: garlic_modifier_group
      )
      Modifier.create(
        item: bolognese_item,
        modifier_group: garlic_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Size options
      ItemModifierGroup.create(
        item:bolognese_item,
        modifier_group: size_s_modifier_group
      )
      Modifier.create(
        item: bolognese_item,
        modifier_group: size_s_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      ItemModifierGroup.create(
        item:bolognese_item,
        modifier_group: size_m_modifier_group
      )
      Modifier.create(
        item: bolognese_item,
        modifier_group: size_m_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      ItemModifierGroup.create(
        item:bolognese_item,
        modifier_group: size_l_modifier_group
      )
      Modifier.create(
        item: bolognese_item,
        modifier_group: size_l_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    # Below APIs contain bug where duplicate SectionItem will be created
    def seed_signature_pizza_items2(signature_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      chicken_pizza_item = signature_section.items.create(
        type: "Signature Pizza",
        identifier: "BBQ_CHICKEN",
        label: "Spicy BBQ Chicken Pizza",
        description: "A fiery twist on our classic BBQ chicken pizza with a spicy kick.",
        price: BigDecimal("15.90")
      )
      signature_section.section_items.create(
        item: chicken_pizza_item,
        display_order: 0
      )

      # Tomato option
      chicken_pizza_item.item_modifier_groups.create(
        modifier_group: tomato_modifier_group
      )
      chicken_pizza_item.modifiers.create(
        modifier_group:tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      chicken_pizza_item.item_modifier_groups.create(
        modifier_group: size_10_modifier_group
      )
      chicken_pizza_item.modifiers.create(
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      chicken_pizza_item.item_modifier_groups.create(
        modifier_group: size_12_modifier_group
      )
      chicken_pizza_item.modifiers.create(
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      chicken_pizza_item.item_modifier_groups.create(
        modifier_group: size_14_modifier_group
      )
      chicken_pizza_item.modifiers.create(
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )

      mediterranean_item = signature_section.items.create(
        type: "Signature Pizza",
        identifier: "MEDITERRANEAN_VEGGIE",
        label: "Mediterranean Veggie Pizza",
        description: "Fresh Mediterranean flavors come to life with a delightful array of veggies and herbs.",
        price: BigDecimal("14.90")
      )
      signature_section.section_items.create(
        item: mediterranean_item,
        display_order: 1
      )

      # Tomato option
      mediterranean_item.item_modifier_groups.create(
        modifier_group: tomato_modifier_group
      )
      mediterranean_item.modifiers.create(
        modifier_group:tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      mediterranean_item.item_modifier_groups.create(
        modifier_group: size_10_modifier_group
      )
      mediterranean_item.modifiers.create(
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      mediterranean_item.item_modifier_groups.create(
        modifier_group: size_12_modifier_group
      )
      mediterranean_item.modifiers.create(
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      mediterranean_item.item_modifier_groups.create(
        modifier_group: size_14_modifier_group
      )
      mediterranean_item.modifiers.create(
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_classic_pizza_items2(classic_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      margherita_pizza_item = classic_section.items.create(
        type: "Classic Pizza",
        identifier: "MARGHERITA",
        label: "Margherita Pizza",
        description: "A timeless classic, featuring fresh tomatoes, mozzarella cheese, and basil leaves on a thin, crispy crust.",
        price: BigDecimal("18.90")
      )
      classic_section.section_items.create(
        item: margherita_pizza_item,
        display_order: 0
      )

      # Tomato option
      margherita_pizza_item.item_modifier_groups.create(
        modifier_group: tomato_modifier_group
      )
      margherita_pizza_item.modifiers.create(
        modifier_group:tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      margherita_pizza_item.item_modifier_groups.create(
        modifier_group: size_10_modifier_group
      )
      margherita_pizza_item.modifiers.create(
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      margherita_pizza_item.item_modifier_groups.create(
        modifier_group: size_12_modifier_group
      )
      margherita_pizza_item.modifiers.create(
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      margherita_pizza_item.item_modifier_groups.create(
        modifier_group: size_14_modifier_group
      )
      margherita_pizza_item.modifiers.create(
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_gourmet_pizza_items2(specialty_section, tomato_modifier_group, size_10_modifier_group, size_12_modifier_group, size_14_modifier_group)
      truffle_mushroom_pizza_item = specialty_section.items.create(
        type: "Gourmet Pizza",
        identifier: "TRUFFLE_MUSHROOM",
        label: "Truffle Mushroom Pizza",
        description: "Indulge in luxury with this gourmet pizza featuring truffle-infused mushrooms, fontina cheese, and a drizzle of truffle oil.",
        price: BigDecimal("19.90")
      )
      specialty_section.section_items.create(
        item: truffle_mushroom_pizza_item,
        display_order: 0
      )

      # Tomato option
      truffle_mushroom_pizza_item.item_modifier_groups.create(
        modifier_group: tomato_modifier_group
      )
      truffle_mushroom_pizza_item.modifiers.create(
        modifier_group:tomato_modifier_group,
        display_order: 0,
        default_quantity: 1,
        price_override: 0
      )

      # Size options
      truffle_mushroom_pizza_item.item_modifier_groups.create(
        modifier_group: size_10_modifier_group
      )
      truffle_mushroom_pizza_item.modifiers.create(
        modifier_group: size_10_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      truffle_mushroom_pizza_item.item_modifier_groups.create(
        modifier_group: size_12_modifier_group
      )
      truffle_mushroom_pizza_item.modifiers.create(
        modifier_group: size_12_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      truffle_mushroom_pizza_item.item_modifier_groups.create(
        modifier_group: size_14_modifier_group
      )
      truffle_mushroom_pizza_item.modifiers.create(
        modifier_group: size_14_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end

    def seed_specialty_spaghetti_items2(specialty_section, cheese_modifier_group, size_s_modifier_group, size_m_modifier_group, size_l_modifier_group, garlic_modifier_group)
      alfredo_item = specialty_section.items.create(
        type: "Specialty Spaghetti",
        identifier: "LOBSTER_SHRIMP",
        label: "Lobster and Shrimp Alfredo",
        description: "A luxurious dish featuring succulent lobster and shrimp tossed in a creamy Alfredo sauce over perfectly cooked spaghetti.",
        price: BigDecimal("24.90")
      )
      specialty_section.section_items.create(
        item: alfredo_item,
        display_order: 0
      )

      # Cheese option
      alfredo_item.item_modifier_groups.create(
        modifier_group: cheese_modifier_group
      )
      alfredo_item.modifiers.create(
        modifier_group: cheese_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Garlic option
      alfredo_item.item_modifier_groups.create(
        modifier_group: garlic_modifier_group
      )
      alfredo_item.modifiers.create(
        modifier_group: garlic_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Size options
      alfredo_item.item_modifier_groups.create(
        modifier_group: size_s_modifier_group
      )
      alfredo_item.modifiers.create(
        modifier_group: size_s_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      alfredo_item.item_modifier_groups.create(
        modifier_group: size_m_modifier_group
      )
      alfredo_item.modifiers.create(
        modifier_group: size_m_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      alfredo_item.item_modifier_groups.create(
        modifier_group: size_l_modifier_group
      )
      alfredo_item.modifiers.create(
        modifier_group: size_l_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end
    
    def seed_classic_spaghetti_items2(classic_section, cheese_modifier_group, size_s_modifier_group, size_m_modifier_group, size_l_modifier_group, garlic_modifier_group)
      bolognese_item = classic_section.items.create(
        type: "Classic Spaghetti",
        identifier: "BOLOGNESE",
        label: "Spaghetti Bolognese",
        description: "A timeless classic with rich, slow-cooked Bolognese sauce made with ground beef, tomatoes, and aromatic herbs served over al dente spaghetti.",
        price: BigDecimal("18.90")
      )
      classic_section.section_items.create(
        item: bolognese_item,
        display_order: 0
      )

      # Cheese option
      bolognese_item.item_modifier_groups.create(
        modifier_group: cheese_modifier_group
      )
      bolognese_item.modifiers.create(
        modifier_group: cheese_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Garlic option
      bolognese_item.item_modifier_groups.create(
        modifier_group: garlic_modifier_group
      )
      bolognese_item.modifiers.create(
        modifier_group: garlic_modifier_group,
        display_order: 0,
        default_quantity: 0,
        price_override: 2
      )

      # Size options
      bolognese_item.item_modifier_groups.create(
        modifier_group: size_s_modifier_group
      )
      bolognese_item.modifiers.create(
        modifier_group: size_s_modifier_group,
        display_order: 1,
        default_quantity: 1,
        price_override: 0
      )

      bolognese_item.item_modifier_groups.create(
        modifier_group: size_m_modifier_group
      )
      bolognese_item.modifiers.create(
        modifier_group: size_m_modifier_group,
        display_order: 2,
        default_quantity: 0,
        price_override: 5
      )

      bolognese_item.item_modifier_groups.create(
        modifier_group: size_l_modifier_group
      )
      bolognese_item.modifiers.create(
        modifier_group: size_l_modifier_group,
        display_order: 3,
        default_quantity: 0,
        price_override: 8
      )
    end
  end
end