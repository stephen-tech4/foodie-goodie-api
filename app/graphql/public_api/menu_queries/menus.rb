module PublicApi
  module MenuQueries
    class Menus < GraphQL::Schema::Resolver
      argument :query, String, required: false

      type [Menu.graphql_type], null: false

      def resolve(query: nil)
        # PG will be later
        # if String(query).squish.blank?
        #   Menu.order(start_date: :asc).all
        # else
        #   Menu.order(start_date: ).pg_search(query)
        # end
        Menu.order(start_date: :asc).all
      end
    end
  end
end