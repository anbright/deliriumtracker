class AccelerometerController < ApplicationController
	def index
		@data = Accelerometer.all
	end

	def api
		@data = Accelerometer.all
		respond_to do |format|
      format.json {
        render json: @data
      }
    end
	end
end
