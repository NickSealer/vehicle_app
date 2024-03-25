# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_car, mutation: Mutations::Cars::Create
    field :update_car, mutation: Mutations::Cars::Update
    field :delete_car, mutation: Mutations::Cars::Delete
  end
end
