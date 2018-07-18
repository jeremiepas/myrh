json.extract! user, :id, :birthdate, :lastname, :name, :password, :description, :email, :compagny_id, :created_at, :updated_at
json.url user_url(user, format: :json)
