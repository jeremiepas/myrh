class Compagny < ApplicationRecord
    validates :name, presence: true, optional: false
end
