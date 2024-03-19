# frozen_string_literal: true

# == Schema Information
# Schema version: 20240318234619
#
# Table name: helicopters
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
#  index_helicopters_on_slug  (slug) UNIQUE
#
FactoryBot.define do
  factory :helicopter do
  end
end
