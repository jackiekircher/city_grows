class Plant < ApplicationRecord
  belongs_to :pot

  validates :growth, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
