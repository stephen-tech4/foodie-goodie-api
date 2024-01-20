module Seeds
  module SeedSections
    module_function

    def seed
      seed_pizza_sections
      seed_spaghetti_sections
      seed_cny_deals_sections
    end

    def seed_pizza_sections
      pizza_menu = Menu.find_by(identifier: "PIZZA")

      signature_section = Section.create(
        identifier: "SIGNATURE",
        label: "Signature Pizza",
        description: "Unique and mouthwatering creations.",
        display_order: 1
      )
      pizza_menu.menu_sections.create(
        section: signature_section,
        display_order: 1
      )

      classic_section = Section.create(
        identifier: "CLASSIC",
        label: "Classic Pizza",
        description: "Timeless and beloved classics.",
        display_order: 2
      )
      pizza_menu.menu_sections.create(
        section: classic_section,
        display_order: 2
      )

      gourmet_section = Section.create(
        identifier: "GOURMET",
        label: "Gourmet Pizza",
        description: "Elevate your pizza experience with premium flavors.",
        display_order: 3
      )
      pizza_menu.menu_sections.create(
        section: gourmet_section,
        display_order: 3
      )
    end

    def seed_spaghetti_sections
      spaghetti_menu = Menu.find_by(identifier: "SPAGHETTI")

      classic_section = Section.create(
        identifier: "CLASSIC",
        label: "Classic Spaghetti",
        description: "Timeless and traditional spaghetti dishes.",
        display_order: 1
      )
      spaghetti_menu.menu_sections.create(
        section: classic_section,
        display_order: 1
      )

      specialty_section = Section.create(
        identifier: "SPECIALTY",
        label: "Specialty Spaghetti",
        description: "Innovative and unique spaghetti creations.",
        display_order: 2
      )
      spaghetti_menu.menu_sections.create(
        section: specialty_section,
        display_order: 2
      )
    end

    def seed_cny_deals_sections
      cny_deals_menu = Menu.find_by(identifier: "LIMITED_CNY")

      festive_section = Section.create(
        identifier: "FESTIVE",
        label: "Festive Specials",
        description: "Celebrate the Chinese New Year with our exclusive Festive Specials. Indulge in traditional flavors and auspicious dishes to bring prosperity to your dining experience.",
        display_order: 1
      )
      cny_deals_menu.menu_sections.create(
        section: festive_section,
        display_order: 1
      )

      lucky_section = Section.create(
        identifier: "LUCKY",
        label: "Lucky Delights",
        description: "Embrace luck and good fortune with our Lucky Delights section. Each dish is crafted to symbolize prosperity and joy, bringing a taste of the New Year's blessings to your table.",
        display_order: 2
      )
      cny_deals_menu.menu_sections.create(
        section: lucky_section,
        display_order: 2
      )
    end
  end
end