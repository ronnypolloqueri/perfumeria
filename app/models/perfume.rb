class Perfume < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :sexo
  belongs_to :mililitro
end
