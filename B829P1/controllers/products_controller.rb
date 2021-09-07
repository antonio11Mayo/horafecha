class ProductsController < ApplicationController
  def index  
  #@cars = Product.order(:id)
  respond_to do |format|
  format.html
  format.csv { send_data @products.to_csv }
 # format.xls { send_data @products.to_csv(col_sep) "/s") }
  end
  end
  end