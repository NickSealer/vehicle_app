# frozen_string_literal: true

# == Schema Information
# Schema version: 20240318154653
#
# Table name: cars
#
#  id           :uuid             not null, primary key
#  brand        :string
#  category     :integer          default("Convertible")
#  color        :string
#  model        :string
#  slug         :string
#  transmission :integer          default("AT")
#  year         :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_cars_on_slug  (slug) UNIQUE
#
class Car < ApplicationRecord
  include VehiclesConcern

  enum transmission: { AT: 0, MT: 1 }
  enum category: {
    Convertible: 0,
    Coupe: 1,
    'Electric Car': 2,
    Hatchback: 3,
    Hybrid: 4,
    'Luxury Car': 5,
    'Luxury SUV': 6,
    Sedan: 7,
    'Sport Car': 8,
    SUV: 9,
    Truck: 10,
    Van: 11
  }
end
