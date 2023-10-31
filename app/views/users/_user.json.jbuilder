json.extract! user, :id, :first_name, :last_name, :street_address1, :street_address2, :city, :state, :zip_code, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
