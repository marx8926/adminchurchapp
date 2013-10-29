class PatrimonioController < ApplicationController

	def equipo
		@title = "Equipos"
	end

	def ambiente
		@title = "Ambiente"
	end

	def asignacionambiente
		@title = "Asignacion de ambiente"
	end

	def material
		@title = "Material"
	end
end
