class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|

      t.timestamps
    end
  end
end
