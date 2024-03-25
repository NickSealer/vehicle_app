# frozen_string_literal: true

module Mutations
  module Cars
    class Create < BaseMutation
      field :car, Types::CarType, null: false
      argument :params, Types::Inputs::CarAttributes, required: true

      def resolve(params:)
        car = Car.create!(Hash(params))

        { car: }
      end
    end
  end
end
