class Response < ApplicationRecord
  belongs_to :user, optional: false
  belongs_to :announce, optional: false
  validates :answers, presence: true, optional: false
end
