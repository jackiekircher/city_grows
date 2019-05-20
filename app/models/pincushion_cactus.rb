class PincushionCactus < Plant
  def name
    'Pincushion Cactus'
  end

  def required_sunlight
    [:high]
  end

  def seed_cost
    8
  end

  def sell_price
    20
  end

  def maturation_time
    12
  end

  def water_interval
    4
  end
end
