class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def amount_times(times)
    Dollar.new(@amount * times)
  end

  def equals(object)
    @amount == object.amount
  end
end

class Franc
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def amount_times(times)
    Franc.new(@amount * times)
  end

  def equals(object)
    @amount == object.amount
  end
end
