class Intervention < ActiveRecord::Base
    belongs_to :building, optional: true
    belongs_to :employees, optional: true
    belongs_to :batteries, optional: true
    belongs_to :columns, optional: true
    belongs_to :elevators, optional: true
    belongs_to :customers
end