json.extract! user, :id, :user_picture,, :name,, :password,, :top_5_restaurants, :created_at, :updated_at
json.url user_url(user, format: :json)
