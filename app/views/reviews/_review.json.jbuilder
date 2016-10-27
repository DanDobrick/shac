json.extract! review, :id, :crash_id, :review_id, :review_text, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)