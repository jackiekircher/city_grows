require 'rails_helper'

RSpec.describe Plant, type: :model do
  Given(:subject) do
    described_class.new
  end

  describe '#has_water?' do
    pending 'should be based off of the plant\'s water_interval and how recently the pot was watered'
  end

  describe '#has_sunlight?' do
    pending 'should be based off of how much sunlight the plant\'s pot has and if it is appropraite for the plant type'
  end

  describe '#grow' do
    pending 'if both water and sunlight conditions are met, the plant should grow by 1!'
  end
end
