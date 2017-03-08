class Character < ApplicationRecord
  validates :name, :alignment, :experience, :presence => true
  has_many :stats, dependent: :destroy
end