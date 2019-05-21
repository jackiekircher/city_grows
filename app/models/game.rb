class Game < ApplicationRecord
  has_many :pots, dependent: :destroy
  validates :day, presence: true, numericality: { greater_than: 0 }
  validates :money, presence: true, numericality: { greater_than_or_equal_to: 0 }

  BOARD_WIDTH = 6
  BOARD_HEIGHT = 10

  BASIC_LAYOUT = [
    %w(o o o o o o),
    %w(o o o o o o),
    %w(. . . . . .),
    %w(o o . . o o),
    %w(o o . . o o),
    %w(o o . . o o),
    %w(o o . . o o),
    %w(. . . . . .),
    %w(o o o o o o),
    %w(o o o o o o)
  ]

  def self.new_game
    game = Game.create(money: 50)
    BASIC_LAYOUT.each_with_index do |col, y|
      col.each_with_index do |symbol, x|
        game.pots.create!(position_x: x, position_y: y, last_watered_at: 0) if symbol == 'o'
      end
    end

    game
  end

  def board
    grid = (0...BOARD_HEIGHT).map do |row|
      Array.new(BOARD_WIDTH)
    end

    pots.each do |pot|
      grid[pot.position_y][pot.position_x] = pot
    end

    grid
  end
end
