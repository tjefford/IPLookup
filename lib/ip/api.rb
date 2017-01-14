require 'json'
require 'httparty'

class Api
  def request_data(ip)
    response = HTTParty.get("https://api.ip2country.info/ip?#{ip}", format: :plain)
    response = parse_json(response)
    format_data(response)
  end

  def parse_json(string)
    JSON.parse(string, symbolize_names: true)
  end

  def format_data(data)
    @country = data[:countryName]
    @flag = data[:countryEmoji]
    @country_code = data[:countryCode]
    @country_code_long = data[:countryCode3]
  end
end
