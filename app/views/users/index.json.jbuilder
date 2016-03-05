json.array!(@users) do |user|
  json.extract! user, :id, :user_id, :password, :name, :email, :phone, :child_name, :child_birthdate, :child_gender, :child_comment
  json.url user_url(user, format: :json)
end
