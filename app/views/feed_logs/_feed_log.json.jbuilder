json.extract! feed_log, :id, :user_id, :cat_id, :comment, :created_at, :updated_at
json.url feed_log_url(feed_log, format: :json)
