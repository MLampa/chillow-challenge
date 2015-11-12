require 'spec_helper'

describe Truck do
  let(:vehicle) {Truck.new(5)}
  describe ".new" do
    it "should have the same information from the Module Manager" do
      expect(vehicle).to be_a(Truck)
    end
  end


  describe "#add_boxes" do
    it "should add boxes to the truck" do
      vehicle.add_entity("Michelle", "Lampa")
      expect(vehicle.entity.size).to eq(1)
    end
  end

  describe "#remove_boxes" do
    it "should remove last boxes" do
      vehicle.add_entity("Michelle", "Lampa")
      vehicle.add_entity("Michelle", "Lampa")
      vehicle.remove_entity
      expect(vehicle.entity.size).to eq(1)
    end
  end

  describe "#remove_persons_boxes" do
    it "should remove the boxes of a specific person" do
      vehicle.add_entity("Michelle", "Lampa")
      vehicle.add_entity("Michelle", "Lampa")
      vehicle.add_entity("Kiefer", "Sutherland")
      vehicle.remove_persons_boxes("Michelle", "Lampa")
      expect(vehicle.entity.size).to eq(1)

    end
  end

end
