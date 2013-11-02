class CreatePlantrabajos < ActiveRecord::Migration
  def change
    create_table( :plantrabajos , :id=>false ) do |t|
      t.primary_key :int_plantrabajo
      t.integer :int_plantrabajo_anio
      t.string :var_plantrabajo_estado, limit: 1
      t.references :persona, index: true

      t.timestamps
    end
  end
end
