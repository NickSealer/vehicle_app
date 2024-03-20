# frozen_string_literal: true

module VehicleQuery
  def self.search(params)
    records = main_records(params)
    records = filter(records, params[:vehicle_type]) if params[:vehicle_type].present?
    records
  end

  def self.main_records(params)
    return [] unless params[:q].present?

    PgSearch.multisearch(params[:q])
  end

  def self.filter(records, vehicle_type)
    return records unless vehicle_permited?(vehicle_type)

    records.where(searchable_type: vehicle_type.capitalize)
  end

  def self.vehicle_permited?(vehicle_type)
    %w[car helicopter motorbike plane ship].include?(vehicle_type.downcase)
  end
end
