class Genre < ApplicationRecord
  has_many :movies, through: :moviegenres
end
