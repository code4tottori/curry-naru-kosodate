json.array!(@applications) do |application|
  json.extract! application, :id, :date, :symptom, :comment, :user_id, :nursery, :status
  json.extract! application.nursery, :applications_count
  json.url application_url(application, format: :json)
end
