# frozen_string_literal: true

class SearchController < ApplicationController
  helper_method :params

  def search
    @records = VehicleQuery.search(params).paginate(page: params[:page], per_page: 10)
  end

  def show
    @q = params[:q]
    @page = params[:page]
    @vehicle_type = params[:vehicle_type]
    @record ||= params[:klass].capitalize.constantize.find(params[:id])
  end
end
