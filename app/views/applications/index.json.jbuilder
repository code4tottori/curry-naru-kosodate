json.array!(@applications) do |application|
  json.extract! application, :id, :date, :symptom, :comment, :user, :nursery
  json.url application_url(application, format: :json)
end
