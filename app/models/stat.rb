class Stat < ApplicationRecord
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :presence => true
  belongs_to :character
end

