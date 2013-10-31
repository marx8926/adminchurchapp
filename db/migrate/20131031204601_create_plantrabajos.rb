class CreatePlantrabajos < ActiveRecord::Migration
  def change
    create_table :plantrabajos do |t|

      t.timestamps
    end
  end
end
