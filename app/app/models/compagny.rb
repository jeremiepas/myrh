class Compagny < ApplicationRecord
    validates :name, presence: true, optionnal: false
end
