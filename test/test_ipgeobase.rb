# frozen_string_literal: true

require_relative "test_helper"
require "webmock/minitest"
require "simplecov"

SimpleCov.start

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_http_query
    true
  end
end
