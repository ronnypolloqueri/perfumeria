class Perfume < ActiveRecord::Base
  belongs_to :marca
  belongs_to :sexo
  belongs_to :tipo
  belongs_to :mililitro
  belongs_to :imagen
end
