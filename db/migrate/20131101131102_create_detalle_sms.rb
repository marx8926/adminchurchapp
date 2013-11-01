class CreateDetalleSms < ActiveRecord::Migration
  def change
    create_table( :detalle_sms ) do |t|
      t.integer :int_detallesms_id
      t.integer :int_sms_id
      t.integer :int_categoria_id
      t.timestamps
    end
  end
end
