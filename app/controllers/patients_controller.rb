class PatientsController < ApplicationController
    
  def patient_record
  	@patient_id = Patient.find(params[:id])
  	@data = Patient.find(params[:id]).accelerometers.all
    @patients = User.find(params[:id]).patients.all
    @other_patients = Patient.all - @patients
  end
    
end