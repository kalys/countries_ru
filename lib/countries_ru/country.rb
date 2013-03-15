module CountriesRu
  Country = Struct.new(:name, :fullname, :english, :alpha2, :alpha3,
        :iso, :location, :location_precise)
end
