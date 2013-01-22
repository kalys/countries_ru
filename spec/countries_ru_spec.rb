require 'spec_helper'

describe CountriesRu do
  it "should return hash of country info by its key" do
    CountriesRu['AU'].should be_kind_of(Hash)
  end

  describe "#keys" do
    it "should proxy to .keys of data hash" do
      CountriesRu.keys.should be_kind_of(Array)
    end
  end

  describe "#each" do
    it "should proxy to .each of countries hash" do
      CountriesRu.each.should be_kind_of(Enumerator)
    end
  end
end
