class Parcel
  attr_reader :length, :width, :height, :weight

  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @length * @width * @height
  end

  def delivery_cost(delivery_option)
    standard = 5
    case delivery_option
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
end
