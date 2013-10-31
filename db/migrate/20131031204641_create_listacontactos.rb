class CreateListacontactos < ActiveRecord::Migration
  def change
    create_table :listacontactos do |t|

      t.timestamps
    end
  end
end
