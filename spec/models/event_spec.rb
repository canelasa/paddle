require 'rails_helper'

RSpec.describe Event, type: :model do
  it "should show user friendly date" do
    event = Event.create(title:'tennis', description:'have fun',
    start_time:'2017-04-15 18:00:00', end_time:'2017-04-15 19:00:00')
    event.show_date

    expect(event.show_date).to eq('04/15/2017 at 06:00PM')
  end

  it "should show event in April" do
    event = Event.create(title:'tennis', description:'have fun',
    start_time:'2017-04-15 18:00:00', end_time:'2017-04-15 19:00:00')
    event.title

    expect(Event.events_in_future.first.title).to eq('tennis')
  end
end
