json.extract! response, :id, :user_id, :quizze_id, :answers, :created_at, :updated_at
json.url response_url(response, format: :json)
