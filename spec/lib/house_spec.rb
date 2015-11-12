require 'spec_helper'

describe House do
  let(:mansion) { House.new("2101 Waverly Street", "Palo Alto", "CA", "94301", "$1,500,000.00") }

  describe ".new" do
    it "is a house" do
      expect(mansion).to be_a(House)
    end

    it "should show an asking price" do
      expect(mansion.asking_price).to eq("$1,500,000.00")
    end
  end
end
