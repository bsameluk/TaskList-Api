require 'sidekiq/web'
require 'graphiql/rails'

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
   mount Sidekiq::Web => "/sidekiq"

  post "/graphql", to: "graphql#execute"
end
