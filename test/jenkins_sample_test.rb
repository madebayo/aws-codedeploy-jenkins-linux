#!/usr/bin/env ruby

require 'net/http'
require 'minitest/autorun'
require 'socket'

class JenkinsSampleTest < MiniTest::Unit::TestCase
  def setup
    uri_params = {
      :host => ENV['TEST_IP_ADDRESS'] || 'localhost',
      :port => (ENV['TEST_PORT'] || '80').to_i,
      :path => '/index.html'
    }
    @webpage = 'Congratulations'
  end

  def test_congratulations
    assert(@webpage.include? 'Congratulations')
  end
end
