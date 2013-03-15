# encoding: utf-8
require 'spec_helper'

describe CountriesRu do
  it "should return hash of country info by its key" do
    CountriesRu['AU'].should be_kind_of(CountriesRu::Country)
  end

  describe "#keys" do
    it "should proxy to .keys of data hash" do
      CountriesRu.keys.should be_kind_of(Array)
    end
  end

  describe "#each" do
    it "should proxy to .each of countries hash" do
      CountriesRu.each.should be_kind_of(Enumerator)

      countries = []
      CountriesRu.each {|key, country| countries.push(country)}
      countries.should_not be_empty
    end
  end

  describe "#map" do
    it "should proxy to .each of countries hash" do
      CountriesRu.map.should be_kind_of(Enumerator)

      CountriesRu.map {|key, country| country }.should_not be_empty
    end
  end

  describe "element of hash" do
    subject { CountriesRu['AU'] }
    its(:name) { should eq("Австралия") }
    its(:fullname) { should eq("") }
    its(:english) { should eq("Australia") }
    its(:alpha2) { should eq("AU") }
    its(:alpha3) { should eq("AUS") }
    its(:iso) { should eq("036") }
    its(:location) { should eq("Океания") }
    its(:location_precise) { should eq("Австралия и Новая Зеландия") }
  end
end
