class User < ApplicationRecord
  belongs_to :compagny, optional: true
  validates :lastname, presence: true, optional: false
  validates :name, presence: true, optional: false
  validates :birthdate, presence: true, optional: false
  validates :password, presence: true, optional: false
  # validates :description, presence: true, optional: false
  validates :email, presence: true, optional: false
end
