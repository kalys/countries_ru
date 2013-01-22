require 'spec_helper'

describe CountriesRu do
  it "should return hash of country info by its key" do
    CountriesRu['AU'].should be_kind_of(Hash)
  end

  it "should return list of keys" do
    CountriesRu.keys.should be_kind_of(Array)
  end
end
