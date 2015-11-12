require 'spec_helper'

describe Apt do
  let(:cuarto) {Apt.new("2 Bowdoin Street", "Everett", "MA", "02149", "$2000.00", "September 1, 2015", "September 1, 2016")}
  describe ".new" do
    it "should tell us the rent per month" do
      expect(cuarto.rent).to eq("$2000.00")
    end

    it "should tell us the lease date" do
      expect(cuarto.lease_start_date).to eq("September 1, 2015")
    end

    it "should tell us the end date" do
      expect(cuarto.lease_end_date).to eq("September 1, 2016")
    end
  end

  describe "#full?" do
    it "should tell me if the apartment complex is full" do
      expect(cuarto.full?).to be(false)
    end
  end

  describe "#add_roommate" do
    it "should add a roomate" do
      cuarto.add_entity("Sally", "Field")
      expect(cuarto.entity.count).to eq(1)
    end
  end

  describe "#remove_roommate" do
    it "should remove a roommate" do
      cuarto.remove_entity
      expect(cuarto.entity.count).to eq(0)
      end
    end

end
