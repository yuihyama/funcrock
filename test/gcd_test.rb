#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/gcd'

class GCDTest < Minitest::Test
  def test_gcd
    assert_equal 0, gcd(0, 0)
    assert_equal 4, gcd(4, 24)
    assert_equal 4, gcd(-4, 24)

    assert_output("0\n") { puts gcd(0, 0) }
    assert_output("4\n") { puts gcd(4, 24) }
    assert_output("4\n") { puts gcd(-4, 24) }
  end
end
