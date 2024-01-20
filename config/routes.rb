Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  post "/public_graphql", to: "public_graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/public_graphql" # GraphiQL endpoints interface
  end

  post "/graphql", to: "graphql#execute" # With user authentication
  post "/public_graphql", to: "public_graphql#execute" # Public access

  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"
end
