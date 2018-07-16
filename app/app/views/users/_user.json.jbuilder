json.extract! user, :id, :birthedate, :lastname, :name, :password, :email, :description, :created_at, :updated_at
json.url user_url(user, format: :json)
