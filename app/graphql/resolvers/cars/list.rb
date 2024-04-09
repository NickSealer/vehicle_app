# frozen_string_literal: true

module Resolvers
  module Cars
    class List < Base
      type [Types::CarType], null: false

      def resolve
        Car.all.order(created_at: :desc)
      end
    end
  end
end
