class Persona < ActiveRecord::Base
	has_many	:plantrabajo
	has_many	:detalle_sms
	belongs_to	:lugar
end
