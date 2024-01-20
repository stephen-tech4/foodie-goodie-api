module PublicApi
  module MenuQueries
    module AllQueries
      extend ActiveSupport::Concern

      included do
        field :menus, resolver: PublicApi::MenuQueries::Menus
      end
    end
  end
end