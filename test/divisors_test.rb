#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/divisors'

class DivisorsTest < Minitest::Test
  def test_divisors
    assert_equal [1, 2, 3, 4, 6, 12], divisors(12)
    assert_equal [1, 2, 3, 4, 6, 12], divisors(-12)
    assert_equal [1, 2, 3, 4, 6, 8, 12, 24], divisors(24)
    assert_equal [1, 37], divisors(37)
    assert_equal [1], divisors(1)
    assert_equal [], divisors(0)
    assert_equal [], divisors(12.1)

    assert_output("[1, 2, 3, 4, 6, 12]\n") { p divisors(12) }
    assert_output("1\n2\n3\n4\n6\n12\n") { puts divisors(12) }
    assert_output("[1, 2, 3, 4, 6, 12]\n") { print divisors(12), "\n" }
  end
end
