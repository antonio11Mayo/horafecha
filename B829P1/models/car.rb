class Car < ApplicationRecord
  # esta convencion de rails ayuda a poner
  # validaciones sobre los atributos de un modelo
  # en este caso que estos campos sean requeridos
  validates :license_plate, :tint, :model, presence: true
end 