# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"
require "date"

CSV.foreach('db/ubi.csv') do |row|
	Ubigeo.create(:string_ubigeo_descripcion => row[1], 
      :int_ubigeo_departamento => row[2],
      :int_ubigeo_provincia => row[3],
      :int_ubigeo_distrito => row[4],
      :int_ubigeo_dependencia => row[5],
      :float_ubigeo_latitud => row[6],
      :float_ubigeo_longitud => row[7])
end

Persona.create(:var_persona_nombres => 'Marks',
	:var_persona_apellidos => 'Calderon',
	:int_persona_edad => 24 ,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'M',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')

Persona.create(:var_persona_nombres => 'Richard',
	:var_persona_apellidos => 'Oruna',
	:int_persona_edad => 22,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'M',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')

Persona.create(:var_persona_nombres => 'Claudia',
	:var_persona_apellidos => 'Valdivieso',
	:int_persona_edad => 23 ,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'F',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')

Persona.create(:var_persona_nombres => 'Carlos',
	:var_persona_apellidos => 'Zarate',
	:int_persona_edad => 24 ,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'M',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')

Persona.create(:var_persona_nombres => 'Luis',
	:var_persona_apellidos => 'Bardales',
	:int_persona_edad => 25 ,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'M',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')

Persona.create(:var_persona_nombres => 'Sam',
	:var_persona_apellidos => 'Aponte',
	:int_persona_edad => 21 ,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'M',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')

Persona.create(:var_persona_nombres => 'Joseph',
	:var_persona_apellidos => 'Alcantara',
	:int_persona_edad => 20 ,
	:dat_persona_fecNacimiento => DateTime.now() ,
	:var_persona_profesion => 'coder',
	:var_persona_ocupacion => 'coder',
	:var_persona_sexo => 'M',
	:var_persona_dni => '12345678',
	:var_persona_estado => 'S',
	:int_persona_diaVisita => 0,
	:dat_persona_horaVisita => Time.new ,
	:var_persona_email => 'contacto@clmdevelopers')
