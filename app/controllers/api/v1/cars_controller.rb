# frozen_string_literal: true

module Api
  module V1
    class CarsController < ApplicationController
      before_action :validate_access_key, only: %i[create update destroy]
      before_action :car, only: %i[show update]

      def index
        @cars ||= Car.order(created_at: :asc).paginate(page: params[:page], per_page: 20)

        render json: {
          cars: @cars,
          metadata: {
            current_page: @cars.current_page,
            per_page: @cars.per_page,
            next_page: @cars.next_page,
            previous_page: @cars.previous_page,
            total_pages: @cars.total_pages,
            total_entries: @cars.total_entries
          }
        }, status: :ok
      end

      def show
        render json: { car: }, status: :ok
      end

      def create
        car = Car.new(car_params)
        return render json: { error: car.errors }, status: :unprocessable_entity unless car.save

        render json: { car: }, status: :created
      end

      def update
        return render json: { error: car.errors }, status: :unprocessable_entity unless car.update!(car_params)

        render json: { car: }, status: :ok
      end

      def destroy
        car.destroy!
        render json: { message: 'Car deleted!' }, status: :ok
      end

      private

      def car
        @car ||= Car.find(params[:id])
      end

      def car_params
        params.require(:car).permit(:brand, :color, :model, :year, :transmission, :category)
      end
    end
  end
end
