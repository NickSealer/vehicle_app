# frozen_string_literal: true

module Resolvers
  class Search < Base
    type [Types::SearchType], null: false
    argument :query, String, required: true
    argument :vehicle_type, String, required: false
    argument :page, Integer, required: false
    argument :limit, Integer, required: false

    def resolve(query:, vehicle_type: nil, page: nil, limit: nil)
      VehicleQuery.search({ q: query, vehicle_type: }).page(page).limit(limit)
    end
  end
end
