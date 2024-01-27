module Seeds
  module SeedSectionsAndItems
    module_function

    DATA = {
      "PIZZA" => {
        "SIGNATURE" => {
          label: "Signature Pizza",
          description: "Unique and mouthwatering creations.",
          display_order: 1
        },
        "CLASSIC" => {
          label: "Classic Pizza",
          description: "Timeless and beloved classics.",
          display_order: 2
        },
        "GOURMET" => {
          label: "Gourmet Pizza",
          description: "Elevate your pizza experience with premium flavors.",
          display_order: 3
        }
      },
      "SPAGHETTI" => {
        "CLASSIC" => {
          label: "Classic Spaghetti",
          description: "Timeless and traditional spaghetti dishes.",
          display_order: 1
        },
        "SPECIALTY" => {
          label: "Specialty Spaghetti",
          description: "Innovative and unique spaghetti creations.",
          display_order: 2
        }
      },
      "LIMITED_CNY" => {
        "FESTIVE" => {
          label: "Festive Specials",
          description: "Celebrate the Chinese New Year with our exclusive Festive Specials. Indulge in traditional flavors and auspicious dishes to bring prosperity to your dining experience.",
          display_order: 1
        },
        "LUCKY" => {
          label: "Lucky Delights",
          description: "Embrace luck and good fortune with our Lucky Delights section. Each dish is crafted to symbolize prosperity and joy, bringing a taste of the New Year's blessings to your table.",
          display_order: 2
        }
      }
    }

    def seed
      DATA.each
    end
  end
end