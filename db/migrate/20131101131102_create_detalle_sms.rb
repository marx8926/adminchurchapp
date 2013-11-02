class CreateDetalleSms < ActiveRecord::Migration
  def change
    create_table( :detalle_sms , :id=>false ) do |t|
      t.primary_key :int_detallesms_id
      t.references :sms, index: true
      t.references :persona, index:true
      t.integer :int_categoria_id
      t.timestamps
    end
  end
end
