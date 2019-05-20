class Pot < ApplicationRecord
  belongs_to :game
  has_one :plant, dependent: :destroy

  validates :game_id, presence: true
  validates :position_x, :position_y, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :last_watered_at, numericality: { greater_than_or_equal_to: 0 }
end
