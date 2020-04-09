class DropInterventionsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :interventions do |t|
      t.timestamps null: false
    end
  end
end