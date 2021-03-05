class Movie < ApplicationRecord
  validates :plot, presence: true
  validates :plot, length: { minimum: 20 }
end
