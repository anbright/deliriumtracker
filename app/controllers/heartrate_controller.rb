class HeartrateController < ApplicationController
  def add_to_api
    id = get_patient_id(params[:patient_num])
    unless id.empty?
      @hr = Heartrate.new(api_params)
    end
  end
  
  private 
		def api_params
			params.require(:accelerometer).permit(:patient_num, :value)
		end
		
    def get_patient_id(num)
      Patient.where(patient_num: num).select('id')
    end
end
