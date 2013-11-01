class CreateEventos < ActiveRecord::Migration
  def change
    create_table( :eventos , :id=>false ) do |t|
      t.primary_key :int_evento_id
      t.integer :int_evento_tipo
      t.string :var_evento_nombre, limit: 150
      t.datetime :dat_evento_fecInicio
      t.datetime :dat_evento_fecFin
      t.time :dat_evento_hora
      t.string :var_evento_descripcion, limit: 500
      t.string :var_evento_direccion, limit: 250
      t.string :var_evento_estado, limit: 1
      t.timestamps
    end
  end
end
