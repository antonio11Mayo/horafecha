class MotosController < ApplicationController
    def index
    @cars = Car.all
  end

  def create
    new_car = Car.new(
      license_plate: params[:car][:license_plate],
      model: params[:car][:model],
      tint: params[:car][:tint]
    )
    new_car.save
    redirect_to cars_path
  end
end

