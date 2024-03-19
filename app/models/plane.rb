# frozen_string_literal: true

# == Schema Information
# Schema version: 20240318234619
#
# Table name: planes
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
#  index_planes_on_slug  (slug) UNIQUE
#
class Plane < ApplicationRecord
  include VehiclesConcern

  enum transmission: { NA: 0 }
  enum category: {
    'Delta Wing': 0,
    'Dihedral Wing': 1,
    'Gull Wing': 2,
    'High Wing': 3,
    'Straight Wing': 4,
    'Swept Wing': 5
  }
end
