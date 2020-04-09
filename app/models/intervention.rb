class Intervention < ActiveRecord::Base
    belongs_to :building, foreign_key: 'BuildingID'
    belongs_to :employee, foreign_key: 'EmployeeID'
    belongs_to :battery, foreign_key: 'BatteryID'
    belongs_to :column,  foreign_key: 'ColumnID'
    belongs_to :elevator , foreign_key: 'ElevatorID'
    belongs_to :customer, foreign_key: 'CustomerID'
end