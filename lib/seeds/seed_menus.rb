module Seeds
  module SeedMenus
    module_function

    MENUS = [
      {
        identifier: "PIZZA",
        label: "Pizza",
        state: "ACTIVE",
        start_date: Time.zone.parse("2024-01-01"),
        end_date: nil
      },
      {
        identifier: "SPAGHETTI",
        label: "Spaghetti",
        state: "UNAVAILABLE",
        start_date: Time.zone.parse("2024-01-01"),
        end_date: Time.zone.parse("2024-01-14")
      },
      {
        identifier: "LIMITED_CNY",
        label: "Chinese New Year Deals",
        state: "ACTIVE",
        start_date: Time.zone.parse("2024-02-01"),
        end_date: Time.zone.parse("2024-02-29")
      }
    ].freeze

    def seed
      MENUS.each do |menu|
        Menu.create(menu)
      end
    end
  end
end