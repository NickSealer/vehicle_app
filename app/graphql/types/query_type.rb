# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :cars, resolver: Resolvers::Cars::List, description: 'List all cars.'
    field :car, resolver: Resolvers::Cars::Show, description: 'Find specific car by id.'
    field :search, resolver: Resolvers::Search,
                   description: "Find vehicles by: Brand, Color, Model and Year.
                   By defautl it shows 10 records per page.
                   Admits the next 'vehicle_type' filter options:
                   all, car, helicopter, motorbike, plane and ship.
                   By default the filter is 'all'"
  end
end
