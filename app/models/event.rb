class Event < ActiveRecord::Base
  def show_date
    day = start_time.strftime("%m/%d/%Y")
    time = start_time.strftime("at %I:%M%p")
    "#{day} #{time}"
  end

  def self.events_in_future
     self.where("start_time > ?", Time.now)
   end
end
