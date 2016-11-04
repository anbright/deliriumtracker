class AccelerometerController < ApplicationController
	def index
		@data = Accelerometer.all
	end
end
