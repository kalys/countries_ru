require "bundler/gem_tasks"

namespace :countries_ru do
  desc "Fetch and parse countries data"
  task :fetch_and_parse do
    require 'open-uri'
    require 'nokogiri'

    doc = Nokogiri::XML(open('http://www.artlebedev.ru/tools/country-list/xml/')) do |config|
      config.noblanks
    end

    countries = {}

    codes = doc.xpath("//country/alpha2").map{|node| node.text }
    codes.each do |code|
      country_node = doc.xpath("//alpha2[.='#{code}']/..")
      countries[code] = Hash[country_node.children.map {|child| [child.name, child.text]}]
    end
    lib_path = File.expand_path('../lib', __FILE__)
    file_path = [lib_path, "data", "countries.yml"].join('/')
    File.open(file_path, 'w') do |f|
      f.write countries.to_yaml
    end
  end
end
