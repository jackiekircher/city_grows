class Game < ApplicationRecord
  has_many :pots, dependent: :destroy
  validates :day, presence: true, numericality: { greater_than: 0 }
  validates :money, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
