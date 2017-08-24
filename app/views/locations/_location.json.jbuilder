json.extract! location, :id, :name, :city, :dist, :state, :postalcode, :about, :created_at, :updated_at
json.url location_url(location, format: :json)
