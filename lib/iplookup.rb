require 'ip/api'
require "ipaddress"

class Lookup < Api
  def initialize(ip = nil)
    raise "IP Address is nil" if ip.nil?
    raise "IP Address is not valid" unless IPAddress.valid? ip

    request_data(ip)
  end

  def country
    @country
  end

  def flag
    @flag
  end

  def country_code
    @country_code
  end

  def country_code_long
    @country_code_long
  end
end
