json.extract! quiz, :id, :name, :question, :user_id, :compagnie_id, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
