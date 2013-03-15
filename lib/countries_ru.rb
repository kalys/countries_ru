require "countries_ru/version"
require "countries_ru/country"

module CountriesRu
  class << self
    Data = YAML.load_file(File.join(File.dirname(__FILE__), 'data', 'countries.yml')) || {}

    def method_missing(method_name, *args, &block)
      proxy_methods = [:[], :keys, :each, :map]
      if proxy_methods.include? method_name
        Data.send(method_name, *args, &block)
      end
    end
  end
end
