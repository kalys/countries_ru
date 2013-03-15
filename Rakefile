require "bundler/gem_tasks"
require 'countries_ru/country'

namespace :countries_ru do
  desc "Fetch and parse countries data"
  task :fetch_and_parse do
    require 'open-uri'
    require 'nokogiri'

    doc = Nokogiri::XML(open('http://www.artlebedev.ru/tools/country-list/xml/')) do |config|
      config.noblanks
    end

    codes = doc.xpath("//country/alpha2").map{|node| node.text }

    countries = codes.map do |code|
      country_node = doc.xpath("//alpha2[.='#{code}']/..")
      country = CountriesRu::Country.new *country_node.children.map {|child| child.text.strip }
      [code, country]
    end

    countries_hash = Hash[countries]

    lib_path = File.expand_path('../lib', __FILE__)
    file_path = [lib_path, "data", "countries.yml"].join('/')
    File.open(file_path, 'w') do |f|
      f.write countries_hash.to_yaml
    end
  end
end
