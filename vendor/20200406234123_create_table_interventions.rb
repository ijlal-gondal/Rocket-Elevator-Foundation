class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|

    t.bigint :Author
    t.bigint :CustomerID
    t.bigint :BuildingID
    t.bigint :BatteryID, null: true
    t.bigint :ColumnID, null: true
    t.bigint :ElevatorID, null: true
    t.bigint :EmployeeID, null: true
    t.datetime :started_at, null: true
    t.datetime :ended_at, null: true
    t.string :Result, default: "Incomplete", null: false
    t.string :Report
    t.string :Status, default: "Pending", null: false

    end
  end
end
