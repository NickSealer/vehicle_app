# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :cars, resolver: Resolvers::Cars::List, description: 'List all cars.'
    field :car, resolver: Resolvers::Cars::Show, description: 'Find specific car by id.'
  end
end
