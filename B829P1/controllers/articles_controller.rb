class ArticlesController < ApplicationController
      def index
      # va para tabla, datos en pantalla, botones pedido  
      @cars = Car.all
      @mthhhh = Car.all
      @zxy = 18191810
      @fch__ = Date.new(1795, 12, 21)
require 'csv'
file = "#{Rails.root}/public/survey.csv"
#userrefs = Survey.all
CSV.open( file, 'w' ) do |writer|
# userrefs.each do |ur|
# writer << ur.attributes.values_at(id license_plate )
# end
end
      
end
     
end

