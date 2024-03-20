# frozen_string_literal: true

module Api
  module V1
    class SearchController < ApplicationController
      def search
        @records = VehicleQuery.search(params).paginate(page: params[:page], per_page: 10)

        render json: {
          data: @records,
          metadata: {
            current_page: @records.current_page,
            per_page: @records.per_page,
            total_entries: @records.total_entries
          }
        }, status: :ok
      end
    end
  end
end
