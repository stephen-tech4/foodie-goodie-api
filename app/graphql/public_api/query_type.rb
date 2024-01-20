module PublicApi
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # ----- QUERY START HERE -----
    include PublicApi::MenuQueries::AllQueries
  end
end
