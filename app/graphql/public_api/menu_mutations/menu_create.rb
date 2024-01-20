module PublicApi
  module MenuMutations
    class MenuCreate <GraphQL::Schema::Mutation
      type GraphQL::Types::JSON

      def resolve
        {result: "OK"}
      end
    end
  end
end