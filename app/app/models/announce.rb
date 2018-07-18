class Announce < ApplicationRecord
  belongs_to :city, optional: false
  belongs_to :compagny, optional: false
  belongs_to :quiz, optional: false
  validates :date, presence: true, optional: false
end
