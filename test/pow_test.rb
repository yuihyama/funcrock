#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/pow'

class PowTest < Minitest::Test
  def test_pow
    assert_equal 0, pow(0, 1)
    assert_equal 1, pow(1, 0)
    assert_equal 1, pow(2, 0)
    assert_equal 2, pow(2, 1)
    assert_equal 4, pow(2, 2)
    assert_equal 8, pow(2, 3)
    assert_equal 13.489468760533386, pow(2.2, 3.3)
    assert_equal 1, pow(-1, 0)
    assert_equal -1, pow(-1, 1)
    assert_equal 1, pow(1, -2)
    assert_equal -2, pow(-2, 1)
    assert_equal 4, pow(-2, 2)
    assert_equal -8.0, pow(-2, 3.0)

    e = 2 ** -1 # => (1/2)
    assert_equal(e, pow(2, -1))

    assert_equal 0.5, pow(2.0, -1)
    assert_equal 0.125, pow(2, -3.0)

    assert pow(2, -1)

    assert_output("8\n") { puts pow(2, 3) }
    assert_output("13.489468760533386\n") { puts pow(2.2, 3.3) }
    assert_output("(1/2)\n") { p pow(2, -1) }
    assert_output("1/2\n") { puts pow(2, -1) }
    assert_output("-8.0\n") { puts pow(-2, 3.0) }
  end
end
