class Character < ApplicationRecord
  validates :name, :alignment, :experience, :presence => true
  has_many :stats, dependent: :destroy

  attr_accessor :alignment_lr, :alignment_ud

  def combine_alignment(left_right, up_down)
    "#{left_right} #{up_down}"
  end
end