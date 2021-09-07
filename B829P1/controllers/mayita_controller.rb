class MayitaController < ApplicationController
 def index 
  @fechtt = Time.now
  @yñ = Time.now.year
  @mes = Time.now.month
  @dyms = Time.now.day
  
  @xfx = @yñ.to_s + "-" + @mes.to_s + "-" +  @dyms.to_s
    @dd_s = Date.parse(@xfx).strftime("%u")

  @Diasemc20jul1810 = Date.parse("1810-7-20").strftime("%u")

  # inicio PRUEBA 2 en mayita controller
  # Fecha Date YMD
  @z_ = Date.new(1995, 12, 21)
  @z__ = Date.new(1995, 12, 21).year
  @z___ = Date.new(1995, 12, 21).month 
  @z = Date.new(1995, 12, 21).day
  #car = Car.find(params[:id])
    #car.update(license_plate: params[:car][:license_plate],
     #          model: params[:car][:model],
     #          tint: params[:car][:tint])
           
    #@car = Car.find(params[:id])
  #@z
  # __en my ctr   fin PRUEBA 2 ___

 end   
  
end

