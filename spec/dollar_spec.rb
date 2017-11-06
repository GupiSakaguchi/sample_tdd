require 'spec_helper'

RSpec.describe Dollar do
  describe "Multipulication" do
    let(:dollar) { Dollar.new(5) }
    it "2 times" do
      product = dollar.amount_times(2)
      expect(product.amount).to eq 10
    end

    it "3 times" do
      product = dollar.amount_times(3)
      expect(product.amount).to eq 15
    end
  end

  describe "Equality" do
    it "object match true" do
      dollar1 = Dollar.new(1)
      dollar2 = dollar1
      expect(dollar1.equal?(dollar2)).to be true
    end

    it "object match false" do
      dollar1 = Dollar.new(1)
      dollar2 = Dollar.new(2)
      expect(dollar1.equal?(dollar2)).to be false
    end
  end

end
