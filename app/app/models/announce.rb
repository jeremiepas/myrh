class Announce < ApplicationRecord
  belongs_to :city, optional: false
  belongs_to :compagny, optional: false
  belongs_to :quiz, optional: false
  accepts_nested_attributes_for :city, :compagny, :quiz
  validates :date, presence: true, optional: false
end
