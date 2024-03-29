class PatientsController < ApplicationController

  DAY = 24*60*60
    
    def patient_record
      	@patient = Patient.find(params[:id])
      	@data = Accelerometer.all
        @last_time = @patient.accelerometers.last.time
        @first_time = @patient.accelerometers.first.time

        @max = Time.at(@last_time).at_end_of_day.to_i
        @min = Time.at(@last_time).at_beginning_of_day.to_i

        Rails.logger.debug params.inspect
        if params.has_key?(:to) && params.has_key?(:from)
          @to = params[:to].to_time.to_i
          @from = params[:from].to_time.to_i
        else
          @to = Time.at(@last_time).at_end_of_day.to_i
          @from = Time.at(@last_time).at_beginning_of_day.to_i
        end

        @days = (@last_time - @first_time) / (DAY)

        @hashes = get_array_of_hash_days(@days)

    end

    def get_array_of_hash_days(days)
      hashes = Array.new
      i = 0
      while i < days
        hashes << get_time_hash(get_data(Time.at(@from) - i*DAY, Time.at(@to) - i*DAY))
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
        c=0
        timestamp.each_with_index do |x,i| 
          if (x-timestamp.first) > 300
            c=i
            break
          end
        end
        if c!=0
          @avg_points << average_min(mag.shift(c-1)).round(2)
          @time << Time.at(timestamp.shift(c-1).first)
        else
          @avg_points << average_min(mag.shift(mag.length)).round(2)
          @time << Time.at(timestamp.shift(timestamp.length).first)
        end
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