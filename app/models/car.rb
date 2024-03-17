# frozen_string_literal: true

# == Schema Information
# Schema version: 20240317152850
#
# Table name: cars
#
#  id           :uuid             not null, primary key
#  brand        :string
#  category     :integer          default(0)
#  color        :string
#  model        :string
#  slug         :string
#  transmission :integer          default(0)
#  year         :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_cars_on_brand  (brand)
#  index_cars_on_color  (color)
#  index_cars_on_model  (model)
#  index_cars_on_slug   (slug) UNIQUE
#  index_cars_on_year   (year)
#
class Car < ApplicationRecord
  self.implicit_order_column = 'created_at'

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
    'Sports Car': 8,
    SUV: 9,
    Truck: 10,
    Van: 11
  }

  before_save :generate_slug

  validates_presence_of :brand, :color, :model, :year

  private

  def generate_slug
    self.slug = "#{brand}-#{model}-#{year}-#{color}".downcase
  end
end
