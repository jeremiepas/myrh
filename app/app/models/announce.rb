class Announce < ApplicationRecord
  belongs_to :city
  belongs_to :compagny
  belongs_to :quiz
end
