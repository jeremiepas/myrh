class Quiz < ApplicationRecord
  belongs_to :user, optional: false
  validates :name, presence: true, optional: false
  validates :question, presence: true, optional: false
end
