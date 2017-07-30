json.extract! review, :id, :user_picture, :name, :user_spending, :no_of_parties, :overall_rating, :who_brought_me_here, :160_char_review, :created_at, :updated_at
json.url review_url(review, format: :json)
