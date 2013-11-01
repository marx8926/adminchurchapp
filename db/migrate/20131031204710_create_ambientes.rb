class CreateAmbientes < ActiveRecord::Migration
  def change
    create_table( :ambientes , :id=>false ) do |t|
      t.primary_key :int_ambiente_id
      t.string :var_ambiente_nombre, limit: 200
      t.integer :int_ambiente_capmaximo
      t.string :var_ambiente_lugar, limit: 150
      t.string :var_ambiente_direccion, limit: 150
      t.string :var_ambiente_estado, limit: 1
      t.timestamps
    end
  end
end
