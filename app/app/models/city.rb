class City < ApplicationRecord
  belongs_to :compagny, optional: false
  validates :name, presence: true, optional: false
end
