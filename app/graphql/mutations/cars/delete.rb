# frozen_string_literal: true

module Mutations
  module Cars
    class Delete < BaseMutation
      field :car, Types::CarType, null: false
      argument :id, ID, required: true, description: 'UUID'

      def resolve(id:)
        validate_access_key(context[:headers])
        car = Car.find_by(id:)
        car&.destroy!

        { car: }
      end
    end
  end
end
