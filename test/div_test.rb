#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/div'

class DivTest < Minitest::Test
  def test_div
    assert div(1, 1)
    assert div(1, 2)

    assert_equal 1, div(1, 1)
    assert_equal 0, div(1, 2)
    assert_equal 0.5, div(1.0, 2)
    assert_equal 1, div(1.0, 1.0)
    assert_equal 2.0, div(2.0, 1)
    assert_equal 3, div(6, 2)
    assert_equal(-3, div(-6, 2))
    assert_equal(-3, div(6, -2))
    assert_equal 3, div(-6, -2)
    assert_equal(-3.0, div(-6, 2.0))
    assert_equal(-3.1, div(6.2, -2))

    assert_output("1\n") { puts div(1, 1)}
    assert_output("1.0\n") { puts div(1.0, 1.0)}
    assert_output("3\n") { puts div(6, 2)}
    assert_output("-3.1\n") { puts div(6.2, -2)}
    assert_output("2/1\n") { puts div(4.0r, 2)}
  end
end
