 class Product < ActiveRecord::Base
 attrib_accessible: name, :price, :released_on
 def self.to_csv(options = {}
 CSV.generate()  do |csv|
CSV << column_names
all.each do |product|
csv << product.atributes.values_at(*column_names)   
end
end
end