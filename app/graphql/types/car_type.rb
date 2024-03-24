# frozen_string_literal: true

module Types
  class CarType < Types::BaseObject
    description 'Car model'
    field :id, ID, null: false, description: 'UUID'
    field :slug, String, description: 'Autogenerated field.'
    field :brand, String, null: false
    field :model, String, null: false
    field :year, Integer, null: false
    field :color, String, null: false
    field :transmission, Integer, description: "Options: #{Car.transmissions}"
    field :category, Integer, description: "Options: #{Car.categories}"
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
