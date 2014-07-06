json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :city, :state, :zip_code, :npi, :license
  json.url doctor_url(doctor, format: :json)
end
