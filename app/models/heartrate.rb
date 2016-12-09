class Heartrate < ApplicationRecord
    belongs_to :patient
    validates :patient_number, :presence => true
    validates :value, :presence => true
end
