# frozen_string_literal: true

class ResultsController < ApplicationController
  helper_method :params

  def results
    @results = if params[:q].present?
                 PgSearch.multisearch(params[:q]).paginate(page: params[:page], per_page: 10)
               else
                 []
               end
  end

  def result
    @q = params[:q]
    @result ||= params[:klass].constantize.find(params[:id])
  end
end
