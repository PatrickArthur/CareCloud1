require 'spec_helper'

describe Schedule do

  before(:each) do
    @sched = Schedule.new
    @sched.start_time = "2014-03-28 7:00:00"
    @sched.end_time = "2014-03-28 8:00:00"
    @sched.first_name = "Pat"
    @sched.last_name = "Arthur"
    @sched.comments = "test"
  end

  it "should be valid when new" do
    expect(@sched).to be_valid
  end
#  it "Imports csv file" do
#    sched = Schedule.create!(start_time: "2014-03-28 7:00:00", end_time: "2014-03-28 8:00:00", first_name: "Pat", last_name: "Arthur", comments: "test")
#    expect(Schedule.import("/Users/pa/test.csv")).to eq(@sched)
#  end
end
