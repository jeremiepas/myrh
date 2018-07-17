class User < ApplicationRecord
  belongs_to :compagny, optional: true
end
