# frozen_string_literal: true

module Resolvers
  module Cars
    class Show < Base
      type Types::CarType, null: false
      argument :id, ID

      def resolve(id:)
        Car.find(id)
      end
    end
  end
end
