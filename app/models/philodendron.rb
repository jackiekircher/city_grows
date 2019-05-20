class Philodendron < Plant
  def name
    'Philodendron'
  end

  def required_sunlight
    [:low, :medium, :high]
  end

  def seed_cost
    2
  end

  def sell_price
    10
  end

  def maturation_time
    8
  end

  def water_interval
    2
  end
end
