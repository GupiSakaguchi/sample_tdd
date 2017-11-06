require 'spec_helper'

RSpec.describe Dollar do
  it "Multipulication" do
    dollar = Dollar.new(5)
    result = dollar.amount_times(2)
    expect(result).to eq 10
  end
end
