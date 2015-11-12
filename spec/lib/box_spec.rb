require 'spec_helper'

describe Box do
  describe ".new" do
    it "should give us the same first name in Occupant" do
      expect(Box.new("Jeremy", "Irons").first_name).to eq("Jeremy")
    end
  end
end
