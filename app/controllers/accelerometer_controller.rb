class AccelerometerController < ApplicationController
	skip_before_action :verify_authenticity_token, only: :add_to_api
	
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
    @avg_points = Array.new
    while mag.count>0
      @avg_points << average_min(mag.shift(12))
    end
    
	end
	
	def add_to_api
		@accel = Accelerometer.new(api_params)
		respond_to do |format|
			if @accel.save
	    	format.json { render status: 200, json: {
			    message: "Successfully added user."
			  }.to_json }
	    else
	    	format.json { render status: 500, json: {
			    message: "Unable to save user.",
					errors: @accel.errors
			  }.to_json }
	    end
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
			params.require(:accelerometer).permit(:time, :user_id, :x,
                                   :y, :z)
      
		end
end
