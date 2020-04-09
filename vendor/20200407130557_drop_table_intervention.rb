class DropTableIntervention < ActiveRecord::Migration[5.2]
  def up
    drop_table :interventions
  end

end
