class Plantrabajo < ActiveRecord::Base
	has_many	:actividad
	belongs_to	:persona
end
