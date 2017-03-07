class Character < ApplicationRecord

  has_many :stats, dependent: :destroy

  validates :characterName, presence: true, length: {minimum: 3}
end
