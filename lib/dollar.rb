class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def amount_times(times)
    Dollar.new(@amount * times)
  end
end
