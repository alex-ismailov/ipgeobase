# frozen_string_literal: true

require './lib/ipgeobase'

TEST_IP = '24.48.0.1'
TEST_IP_2 = '8.8.8.8'

# keys = [:query, :status, :continent, :continentCode, :region, :regionName, :city, :district, :zip, :lat, :lon, :timezone, :offset, :currency, :isp, :org, :as, :asname, :mobile, :proxy, :hosting];
keys = ['query', 'status', 'continent', 'continentCode', 'region', 'regionName', 'city', 'district', 'zip', 'lat', 'lon', 'timezone', 'offset', 'currency', 'isp', 'org', 'as', 'asname', 'mobile', 'proxy', 'hosting'];


ip_meta = Ipgeobase.lookup(TEST_IP_2)

# puts ip_meta.city # Ashburn
# puts ip_meta.country # United States
# puts ip_meta.lat # 39.03
# puts ip_meta.lon # -77.5

keys.each do |key|
  puts ip_meta.instance_variable_get("@#{key}")
end

# puts ip_meta.instance_variables
