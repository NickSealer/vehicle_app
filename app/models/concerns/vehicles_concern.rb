# frozen_string_literal: true

module VehiclesConcern
  extend ActiveSupport::Concern

  included do
    include PgSearch::Model
    multisearchable(
      against: %i[brand color model year],
      additional_attributes: ->(vehicle) { { uuid: vehicle.id, slug: vehicle.slug } }
    )

    self.implicit_order_column = 'created_at'

    before_save :generate_slug

    validates_presence_of :brand, :color, :model, :year

    private

    def generate_slug
      self.slug = "#{brand}-#{model}-#{year}-#{color}".gsub(' ', '-').downcase
    end
  end
end
