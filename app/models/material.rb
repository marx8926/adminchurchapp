class Material < ActiveRecord::Base
	has_many :detallematerial, foreign_key: "int_material_id"
end
