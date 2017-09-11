class Parcel
  attr_reader :length, :width, :height, :weight, :delivery_option

  def initialize(length, width, height, weight, delivery_option)
    @length = length
    @width = width
    @height = height
    @weight = weight
    @delivery_option = delivery_option
  end

  def volume
    @length * @width * @height
  end

  def delivery_cost
    standard = 5
    case @delivery_option
    when "overnight"
      standard += 20
    when "two todays"
      standard += 10
    when "standard"
      standard
    else
      return "Limited shipping option. Plaese choose: overnight, two todays, or standard."
    end
    standard
  end

  def weight_cost
    cost = 0
    case @weight
    when (0..10)
      cost = 5
    when (11..30)
      cost = 10
    when (31..100)
      cost = 15
    end
    cost
  end

  def cost_to_ship
    weight_cost + delivery_cost + (volume * 2)
  end
end
