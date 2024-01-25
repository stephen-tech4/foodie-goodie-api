module Seeds
  module SeedMenus
    module_function

    def seed
      Menu.create(
        identifier: "PIZZA",
        label: "Pizza",
        state: "ACTIVE",
        start_date: Time.zone.parse("2024-01-01"),
        end_date: nil
      )

      Menu.create(
        identifier: "SPAGHETTI",
        label: "Spaghetti",
        state: "UNAVAILABLE",
        start_date: Time.zone.parse("2024-01-01"),
        end_date: Time.zone.parse("2024-01-14")
      )

      Menu.create(
        identifier: "LIMITED_CNY",
        label: "Chinese New Year Deals",
        state: "ACTIVE",
        start_date: Time.zone.parse("2024-02-01"),
        end_date: Time.zone.parse("2024-02-29")
      )
    end
  end
end