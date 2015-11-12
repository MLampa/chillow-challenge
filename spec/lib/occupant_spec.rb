require 'spec_helper'

describe Occupant do
  let(:tenant) {Occupant.new("Jeremy", "Irons")}

  describe ".new" do
    it "assigns occupants a first name" do
      expect(tenant.first_name).to eq("Jeremy")
    end

    it "assigns occupants a last name" do
      expect(tenant.last_name).to eq("Irons")
    end
  end

end
