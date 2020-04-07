class Intervention < ActiveRecord::Base
    belongs_to :building
    belongs_to :employees
    belongs_to :batteries
    belongs_to :columns
    belongs_to :elevators
end