json.extract! location, :id, :name, :street_address1, :street_address2, :city, :state, :zip_code, :created_at, :updated_at
json.url location_url(location, format: :json)
