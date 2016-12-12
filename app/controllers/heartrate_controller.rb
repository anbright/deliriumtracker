class HeartrateController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :add_to_api
  
  def add_to_api
    @hr = Heartrate.new(api_params)
    @hr.patient_id = get_patient(@hr.patient_num).first.id
    
  	respond_to do |format|
  		if @hr.save
      	format.json { render status: 200, json: {
  		    message: "Successfully added heartrate."
  		  }.to_json }
      else
      	format.json { render status: 500, json: {
  		    message: "Unable to save heartrate.",
  				errors: @hr.errors
  		  }.to_json }
      end
    end
  end
  
  private 
		def api_params
			params.require(:heartrate).permit(:patient_num, :value)
		end
		
		def get_patient(num)
      Patient.where(patient_num: num)
    end
end
