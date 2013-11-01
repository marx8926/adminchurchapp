class CreateDetallematerials < ActiveRecord::Migration
  def change
    create_table( :detallematerials) do |t|
      t.integer	:int_material_id
      t.integer :int_asignacionrecurso_id
      t.string :var_detallematerial_estado, limit: 1
      t.timestamps
    end
  end
end
