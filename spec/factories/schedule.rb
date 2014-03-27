# spec/factories/schedule.rb
FactoryGirl.define do
  factory :schedule do |f|
    f.start_time "2014-03-28 7:00:00"
    f.end_time "2014-03-28 8:00:00"
    f.first_name "Pat"
    f.last_name "Arthur"
    f.comments "test"
  end
end
