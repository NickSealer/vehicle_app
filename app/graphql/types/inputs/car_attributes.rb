# frozen_string_literal: true

module Types
  module Inputs
    class CarAttributes < BaseInputObject
      description 'Attributes required to create/update a Car record.'
      argument :brand, String, required: true
      argument :color, String, required: true
      argument :model, String, required: true
      argument :year, Integer, required: true
      argument :transmission, Integer, required: false, description: "Options: #{Car.transmissions}"
      argument :category, Integer, required: false, description: "Options: #{Car.categories}"
    end
  end
end
