module PublicApi
  module MenuMutations
    module AllMutations
      extend ActiveSupport::Concern

      included do
        field :menu_create, mutation: PublicApi::MenuMutations::MenuCreate
      end
    end
  end
end