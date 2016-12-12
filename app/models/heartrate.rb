class Heartrate < ApplicationRecord
  belongs_to :patient
  
  private
    def get_patient_id(num)
      Patient.where(patient_num: num).select('id')
    end
  
end
