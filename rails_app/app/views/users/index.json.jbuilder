json.array!(@users) do |user|
  json.extract! user, :id, :name, :address, :city, :state, :zip_code, :npi, :license
  json.url user_url(user, format: :json)
end
