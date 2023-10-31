json.extract! toy_reservation, :id, :user_id, :toy_type_id, :fulfilled, :start_date, :created_at, :updated_at
json.url toy_reservation_url(toy_reservation, format: :json)
