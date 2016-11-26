class PatientsController < ApplicationController

  #Time.at(Accelerometer.first.time)
  DAY = 24*60*60
    
    def patient_record
      	@patient = Patient.find(params[:id])
      	@data = Accelerometer.all

        @days = (@patient.accelerometers.last.time - @patient.accelerometers.first.time) / (DAY)

        @hashes = get_array_of_hash_days(@days)

    end

    def get_array_of_hash_days(days)
      hashes = Array.new
      i = 0
      while i < days
        hashes << get_time_hash(get_data(Time.now.at_beginning_of_day() - i*DAY,Time.now.at_end_of_day() - i*DAY))
        i += 1
      end
      hashes
    end

    def get_data(from, to)
      times = @patient.accelerometers.where("time > ? and time < ?", from.to_i, to.to_i)
    end

    def get_time_hash(data)
      mag = magnitude data
      @avg_points = Array.new
      @time = Array.new
      timestamp = data.pluck(:time)
      #Averages the value of 12 data points and associates the time
      # with the first data points time
      while mag.count>0
        @avg_points << average_min(mag.shift(12))
        @time << Time.at(timestamp.shift(12).first)
      end
      @first = @avg_points.first(5)
      @time.zip(@avg_points).to_h
    end
        
    def magnitude(data)
        mag = Array.new
        data.each do |d|
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