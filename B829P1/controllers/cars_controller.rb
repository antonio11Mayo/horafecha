class CarsController < ApplicationController
  def index
    # va para tabla, datos en pantalla, botones pedido  
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
  
  def edit
    #sale hacia edicion
    @car = Car.find(params[:id])
  end   

  def update
    #actualiza lo colocado en edicion
    car = Car.find(params[:id])
    car.update(license_plate: params[:car][:license_plate],
               model: params[:car][:model],
               tint: params[:car][:tint])
           
    @car = Car.find(params[:id])
    if @car.update(license_plate: params[:car][:license_plate],
                   model: params[:car][:model],
                   tint: params[:car][:tint])
      redirect_to cars_path
    else
      render :edit
      end
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    redirect_to cars_path
  end
 
end

