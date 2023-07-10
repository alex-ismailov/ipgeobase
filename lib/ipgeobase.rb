# frozen_string_literal: true

require_relative "ipgeobase/version"

require "net/http"
require "addressable/uri"
require "faraday"
require "happymapper"

PATH = "http://ip-api.com/xml"

module Ipgeobase
  class Error < StandardError; end
  # Your code goes here...

  def self.lookup(ip = "")
    uri_string = "#{PATH}/#{ip}"
    uri = Addressable::URI.parse(uri_string)
    response = Faraday.get(uri)
    xml_data = response.body
    HappyMapper.parse(xml_data)
  end
end
