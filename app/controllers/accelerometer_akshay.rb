class AccelerometerController < ApplicationController
	def index
		@data = Accelerometer.all
	end


	def api
		@data = Accelerometer.all
		respond_to do |format|
      format.json {
        render :json => @data
      }
    end
    
    mag = magnitude
    avg_points = Array.new
    while mag.count>0
      avg_points << average_min(mag.shift(12))
    end
    
	end
	
	def magnitude
		@data = Accelerometer.all
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
	
	private 
		def api_params
			#params.require()
		end
end
