# frozen_string_literal: true

module Resolvers
  module Cars
    class List < Base
      type [Types::CarType], null: false

      def resolve
        Car.all
      end
    end
  end
end
