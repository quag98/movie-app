class Movie < ApplicationRecord
  belongs_to :actor
  validates :plot, presence: true
  validates :plot, length: { minimum: 20 }
end
