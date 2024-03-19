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
require 'rails_helper'

RSpec.describe Ship do
  pending "add some examples to (or delete) #{__FILE__}"
end
