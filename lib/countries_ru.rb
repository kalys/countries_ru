require "countries_ru/version"

module CountriesRu
  class << self
    Data = YAML.load_file(File.join(File.dirname(__FILE__), 'data', 'countries.yml')) || {}

    def method_missing(method_name, *args, &block)
      proxy_methods = [:[], :keys, :each]
      if proxy_methods.include? method_name
        Data.send method_name, *args
      end
    end
  end
end
