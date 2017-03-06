class Character < ApplicationRecord
  validates :characterName, presence: true, length: {minimum: 3}
  validates :characterClass, presence: true
  validates :characterRace, presence:  true
end
