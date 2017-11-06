require 'spec_helper'

RSpec.describe Dollar do
  let(:dollar) { Dollar.new(5) }

  describe "Multipulication" do
    it "2 times" do
      product = dollar.amount_times(2)
      expect(product.amount).to eq 10
    end

    it "3 times" do
      product = dollar.amount_times(3)
      expect(product.amount).to eq 15
    end
  end
end
