json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :start_time, :end_time, :first_name, :last_name, :comments
  json.url schedule_url(schedule, format: :json)
end
