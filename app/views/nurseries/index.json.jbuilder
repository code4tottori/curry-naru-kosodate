json.array!(@nurseries) do |nurseries|
  json.extract! nurseries, :id, :name, :address, :phone, :business_hours, :capacity, :condition, :fee, :things, :medical_system, :comment
  json.url nurseries_url(nurseries, format: :json)
end
