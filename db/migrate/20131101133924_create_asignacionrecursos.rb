class CreateAsignacionrecursos < ActiveRecord::Migration
  def change
    create_table( :asignacionrecursos , :id=>false ) do |t|
      t.primary_key :int_asignacionrecurso_id
      t.string :var_asignacionrecurso_area, limit: 200
      t.integer :var_asignacionrecurso_responsable
      t.integer :int_ambiente_id
      t.datetime :dat_asignacionrecurso_fecInicio
      t.datetime :dat_asignacionrecurso_fecFin
      t.timestamps :dat_asignacionrecurso_fecRegistro
      t.string :var_asignacionrecurso_estado, limit: 1
      t.string :var_asignacionrecurso_motivo, limit: 250
      t.integer :int_asignacionrecurso_usuario
      t.timestamps
    end
  end
end
