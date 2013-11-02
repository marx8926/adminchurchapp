class Asignacionrecurso < ActiveRecord::Base
	has_many	:detallematerial, foregin_key: "int_asignacionrecurso_id"
	belongs_to	:ambiente
end
