require 'spec_helper'

RSpec.describe Dollar do
  describe "Multipulication" do
    let(:dollar) { Money.dollar(5) }
    it "2 times" do
      expect(Dollar.new(10).amount).to eq dollar.amount_times(2).amount
    end

    it "3 times" do
      expect(Dollar.new(15).amount).to eq dollar.amount_times(3).amount
    end
  end

  describe "Equality" do
    it "object match true" do
      dollar1 = Dollar.new(1)
      dollar2 = Dollar.new(1)
      expect(dollar1.equals(dollar2)).to be true
    end

    it "object match false" do
      dollar1 = Dollar.new(1)
      dollar2 = Dollar.new(2)
      expect(dollar1.equals(dollar2)).to be false
    end
  end

end

RSpec.describe Franc do
  describe "Multipulication" do
    let(:franc) { Money.franc(5) }
    it "2 times" do
      expect(Franc.new(10).amount).to eq franc.amount_times(2).amount
    end

    it "3 times" do
      expect(Franc.new(15).amount).to eq franc.amount_times(3).amount
    end
  end

  describe "Equality" do
    it "object match true" do
      franc1 = Franc.new(1)
      franc2 = Franc.new(1)
      expect(franc1.equals(franc2)).to be true
    end

    it "object match false" do
      franc1 = Franc.new(1)
      franc2 = Franc.new(2)
      expect(franc1.equals(franc2)).to be false
    end
  end

end
