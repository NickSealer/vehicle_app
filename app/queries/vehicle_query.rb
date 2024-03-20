# frozen_string_literal: true

module VehicleQuery
  def self.search(params)
    results = main_results(params)
    results = filter(results, params[:vehicle_type]) if params[:vehicle_type].present?
    results
  end

  def self.main_results(params)
    return [] unless params[:q].present?

    PgSearch.multisearch(params[:q])
  end

  def self.filter(results, vehicle_type)
    return results unless vehicle_permited?(vehicle_type)

    results.where(searchable_type: vehicle_type.capitalize)
  end

  def self.vehicle_permited?(vehicle_type)
    %w[car helicopter motorbike plane ship].include?(vehicle_type.downcase)
  end
end
