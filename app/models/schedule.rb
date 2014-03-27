class Schedule < ActiveRecord::Base
   require 'CSV'
   
   validates_datetime :start_time, :after => :now, :message => "Start Time must be in the future"
   validates_datetime :end_time, :after => :now, :message => "End Time must be in the future"
   validates :start_time, :end_time, :overlap => {:scope => "first_name"}, :overlap => {:scope => "last_name"}
   
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
   
        schedule_hash = row.to_hash # exclude the price field
        schedule = Schedule.where(id: schedule_hash["id"])
   
        if schedule.count == 1
          schedule.first.update_attributes(schedule_hash)
        else
          Schedule.create!(schedule_hash)
        end # end if !product.nil?
      end # end CSV.foreach
    end # end self.import(file)
  end # end class
