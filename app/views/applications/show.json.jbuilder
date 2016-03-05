json.extract! @application, :id, :date, :symptom, :comment, :user_id, :nursery, :created_at, :updated_at, :status
json.extract! @application.nursery, :applications_count
