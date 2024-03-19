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
require 'rails_helper'

RSpec.describe Motorbike do
  pending "add some examples to (or delete) #{__FILE__}"
end
