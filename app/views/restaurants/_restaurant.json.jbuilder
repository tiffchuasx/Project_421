json.extract! restaurant, :id, :restaurant_name, :picture, :address1, :address2, :postal_code, :contact, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
