class PatientsController < ApplicationController
    
    def patient_record
      	@patient = Patient.find(params[:id])
      	@data = Accelerometer.all
      	
      	mag = magnitude
        @avg_points = Array.new
        @time = Array.new
        timestamp = @data.pluck(:time)
        while mag.count>0
            @avg_points << average_min(mag.shift(12))
            @time << timestamp.shift(12).first
        end
    end
    
        
    def magnitude
        mag = Array.new
        @data.each do |d|
            mag << d.x.abs + d.y.abs + d.z.abs
        end
        return mag
    end
	
    def average_min(mag)
	      total = mag.inject(:+)
  	    avg = total/mag.count
	      return avg
    end
    
end