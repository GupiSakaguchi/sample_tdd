class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def amount_times(times)
    Money.new(@amount * times)
  end

  def equals(object)
    @amount == object.amount && self.class.name == object.class.name
  end

  class << self
    def dollar(amount)
      Dollar.new(amount)
    end

    def franc(amount)
      Franc.new(amount)
    end
  end
end

class Dollar < Money
  def amount_times(times)
    Dollar.new(@amount * times)
  end
end

class Franc < Money
  def amount_times(times)
    Franc.new(@amount * times)
  end
end
