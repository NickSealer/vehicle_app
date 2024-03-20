# frozen_string_literal: true

class ResultsController < ApplicationController
  helper_method :params

  def results
    @results = VehicleQuery.search(params).paginate(page: params[:page], per_page: 10)
  end

  def result
    @q = params[:q]
    @result ||= params[:klass].capitalize.constantize.find(params[:id])
  end
end
