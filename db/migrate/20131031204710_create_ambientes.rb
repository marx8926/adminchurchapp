class CreateAmbientes < ActiveRecord::Migration
  def change
    create_table :ambientes do |t|

      t.timestamps
    end
  end
end
