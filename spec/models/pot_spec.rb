require 'rails_helper'

RSpec.describe Pot, type: :model do
  Given(:subject) do
    described_class.new(
      position_x: x,
      position_y: y,
      last_watered_at: last_watered_at
    )
  end

  Given(:x) { 0 }
  Given(:y) { 0 }
  Given(:last_watered_at) { 0 }

  describe '#sunlight' do
    When(:result) { subject.sunlight }

    context 'when the pot is in the top few rows of the store' do
      Given(:y) { 2 }

      it 'has low levels of sunlight' do
        expect(result).to eq(:low)
      end
    end

    context 'when the pot is in the middle rows of the store' do
      Given(:y) { 3 }

      it 'has medium levels of sunlight' do
        expect(result).to eq(:medium)
      end
    end

    context 'when the pot is in the bottom few rows of the store' do
      Given(:y) { 7 }

      it 'has high levels of sunlight' do
        expect(result).to eq(:high)
      end
    end
  end
end
