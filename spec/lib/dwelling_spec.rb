require 'spec_helper'

describe Dwelling do
  let(:abode) {Dwelling.new("3000 Sand Hill Road", "Menlo Park", "CA", "94025")}
  describe ".new" do
    it "assigns an address" do
      expect(abode.address).to eq("3000 Sand Hill Road")
    end

    it "assigns a city or town" do
      expect(abode.city_or_town).to eq("Menlo Park")
    end

    it "assigns a state" do
      expect(abode.state).to eq("CA")
    end

    it "assigns a zip code" do
      expect(abode.zip_code).to eq("94025")
    end

  end
end
