# frozen_string_literal: true

# == Schema Information
# Schema version: 20240318234619
#
# Table name: ships
#
#  id           :uuid             not null, primary key
#  brand        :string
#  category     :integer          default(0)
#  color        :string
#  model        :string
#  slug         :string
#  transmission :integer          default("NA")
#  year         :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_ships_on_slug  (slug) UNIQUE
#
class Ship < ApplicationRecord
  include VehiclesConcern

  enum transmission: { NA: 0 }
  enum category: {
    Cargo: 0,
    Ferry: 1,
    Fishing: 2,
    Passenger: 3,
    Specialty: 4,
    Tanker: 5,
    'Tug boats': 6,
    Yachts: 7
  }
end
