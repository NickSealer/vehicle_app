# frozen_string_literal: true

class ResultsController < ApplicationController
  helper_method :params

  def results
    @results = if params[:q].present?
                 Car.where('brand ILIKE ?', "%#{params[:q]}%")
               else
                 []
               end
  end

  def result
    @q = params[:q]
    @result ||= Car.find(params[:id])
  end
end
