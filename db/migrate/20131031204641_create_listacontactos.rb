class CreateListacontactos < ActiveRecord::Migration
  def change
    create_table( :listacontactos , :id=>false ) do |t|
      t.primary_key :int_listacontacto
      t.string :var_listacontacto_estado, limit: 1
      t.string :var_listacontacto_email, limit: 100
      t.references :evento, index: true
      t.timestamps
    end
  end
end
