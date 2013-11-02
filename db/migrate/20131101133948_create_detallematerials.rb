class CreateDetallematerials < ActiveRecord::Migration
  def change
    create_table( :detallematerials) do |t|
      t.references :material, index: true
      t.references :asignacionrecurso, index: true
      t.string :var_detallematerial_estado, limit: 1
      t.timestamps
    end
  end
end
