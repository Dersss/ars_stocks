json.extract! user, :id, :username, :email, :wallet, :created_at, :updated_at
json.url user_url(user, format: :json)
