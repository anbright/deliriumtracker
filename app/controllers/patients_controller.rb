class PatientsController < ApplicationController
    
    def patient_record
      	@patient = Patient.find(params[:id])
      	@accel = Accelerometer.all
      	@data
      	@accel.each do |x|
      	    if x.patient_id == 1
      	        @xdata = x.x.abs
      	        @ydata = x.y.abs
      	        @zdata = x.z.abs
      	        @total = @xdata + @ydata + @zdata
      	        @data = @total / 3
      	    end
      	end
    end
end

