class Movie < ApplicationRecord
  belongs_to :actor
  has_many :genres, through: :moviegenres
  validates :plot, presence: true
  validates :plot, length: { minimum: 20 }
end
