json.extract! location, :id, :name, :city, :state, :country, :created_at, :updated_at
json.url location_url(location, format: :json)
