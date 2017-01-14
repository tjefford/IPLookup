# IPLookup
A basic ruby gem to get the Country data of a given IP address using the public API from [ip2country](https://ip2country.info/).

### Other Gem Dependencies
- JSON
- HTTParty
- ipaddress


### Installation
First you will need to build the gem then you can easily gem install it.

```bash
gem build iplookup.gemspec
```

Then install it in your system

```bash
gem install IPLookup-0.0.1.gem
```

### Using the Gem

```ruby
# Your users IP address happens to be 8.8.8.8, which is the same
# as googles public IP address.
data = Lookup.new('8.8.8.8')

## Now you can call the public methods on it to display the data.
data.country
#=> "United States"

data.country_code
#=> "US"

data.country_code_long
#=> "USA"

data.flag
#=> "🇺🇸"
