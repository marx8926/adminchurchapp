class CreateMaterials < ActiveRecord::Migration
  def change
    create_table( :materials , :id=>false ) do |t|
      t.primary_key :int_material
      t.integer :int_material_tipo
      t.string :var_material_marca, limit: 50
      t.string :var_material_color, limit: 50
      t.float :dec_material_cantidad
      t.string :var_material_estado, limit: 1

      t.timestamps
    end
  end
end
