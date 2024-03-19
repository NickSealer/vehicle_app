# frozen_string_literal: true

# == Schema Information
# Schema version: 20240318225454
#
# Table name: motorbikes
#
#  id           :uuid             not null, primary key
#  brand        :string
#  category     :integer          default("Anveture")
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
#  index_motorbikes_on_slug  (slug) UNIQUE
#
class Motorbike < ApplicationRecord
  include VehiclesConcern

  enum transmission: { AT: 0, MT: 1 }
  enum category: {
    Anveture: 0,
    Classic: 1,
    Cruicer: 2,
    Custom: 3,
    'Dual Sport': 4,
    Moped: 5,
    Naked: 6,
    'Off-road': 7,
    Sport: 8,
    Sportbike: 9,
    'Sport Touring': 10,
    Scooter: 11,
    Touring: 12
  }
end
