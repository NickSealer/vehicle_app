# frozen_string_literal: true

module Mutations
  module Cars
    class Update < BaseMutation
      field :car, Types::CarType, null: false
      argument :id, ID, required: true, description: 'UUID'
      argument :params, Types::Inputs::CarAttributes, required: false

      def resolve(id:, params:)
        car = Car.find_by(id:)
        car&.update!(Hash(params))

        { car: }
      end
    end
  end
end
