# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'countries_ru/version'

Gem::Specification.new do |gem|
  gem.name          = "countries_ru"
  gem.version       = CountriesRu::VERSION
  gem.authors       = ["Kalys Osmonov"]
  gem.email         = ["kalys@osmonov.com"]
  gem.description   = %q{All sorts of useful information about every country in russian language. Data from http://www.artlebedev.ru/tools/country-list/.}
  gem.summary       = %q{Gives you a country object full of all sorts of useful information in russian language.}
  gem.homepage      = "http://github.com/kalys/countries_ru"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'nokogiri'
  gem.add_development_dependency 'pry-debugger'
  gem.add_development_dependency 'rspec'
end
