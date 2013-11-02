class Detallematerial < ActiveRecord::Base
	belongs_to	:material
	belongs_to	:asignacionrecurso
end
