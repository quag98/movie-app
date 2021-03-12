class Actor < ApplicationRecord
  has_many :movies
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numereicality: { greater_than: 13 }
end
