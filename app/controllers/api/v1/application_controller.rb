# frozen_string_literal: true

module Api
  module V1
    class ApplicationController < ActionController::API
      rescue_from ActiveRecord::RecordNotFound do |e|
        render json: { error: e }, status: :not_found
      end

      rescue_from ArgumentError do |e|
        render json: { error: e }, status: :unprocessable_entity
      end

      private

      def validate_access_key
        render json: { message: 'Invalid access key.' }, status: :unauthorized unless access_key_valid?(request.headers['HTTP_ACCESS_KEY'])
      end

      def access_key_valid?(access_key)
        access_key == ENV.fetch('ACCESS_KEY')
      end
    end
  end
end
