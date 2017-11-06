class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def amount_times(times)
    Money.new(@amount * times)
  end

  def equals(object)
    @amount == object.amount
  end
end

class Dollar < Money
end

class Franc < Money
  def amount_times(times)
    Franc.new(@amount * times)
  end
end
