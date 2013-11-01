class CreateActividads < ActiveRecord::Migration
  def change
    create_table( :actividads , :id=>false ) do |t|
      t.primary_key :int_actividad
      t.integer :int_actividad_tiposervicio
      t.string :var_actividad_descripcion, limit: 200
      t.integer :int_actividad_mes
      t.integer :int_actividad_red
      t.datetime :dat_actividad_fecha
      t.string :var_actividad_estado, limit: 1
      t.timestamps
    end
  end
end
