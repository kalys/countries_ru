# CountriesRu

All sorts of useful information about countries in russian language. Source of data is http://www.artlebedev.ru/tools/country-list/.

## Installation

Add this line to your application's Gemfile:

    gem 'countries_ru'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install countries_ru

## Usage

```
> CountriesRu['US']
=> #<struct CountriesRu::Country
 name="Соединенные Штаты",
 fullname="Соединенные Штаты Америки",
 english="United States",
 alpha2="US",
 alpha3="USA",
 iso="840",
 location="Америка",
 location_precise="Северная Америка">
 
> CountriesRu['US'].name
=> "Соединенные Штаты"

> CountriesRu.keys
=> ["AB",
 "AU",
 "AT",
 "AZ",
 "AL",
 "DZ",
 "AS",
 # and so on.
 
> CountriesRu.each {|key, country| p [key, country.name].join(' ') }
 "AB Абхазия"
 "AU Австралия"
 "AT Австрия"
 "AZ Азербайджан" 
 # and so on 
 
> CountriesRu.map {|key, country| country.name }
=> ["Абхазия",
 "Австралия",
 "Австрия",
 # and so on.
 ```
