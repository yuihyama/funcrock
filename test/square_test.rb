#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/square'

class SquareTest < Minitest::Test
  def test_square
    assert_equal 0, square(0)
    assert_equal 1, square(-1)
    assert_equal 4, square(2)
    assert_equal 9.0, square(3.0)
    assert_equal 30.25, square(5.5)
    assert_equal 30.25, square(-5.5)

    assert_output("0\n") { puts square(0) }
    assert_output("1\n") { puts square(-1) }
    assert_output("4\n") { puts square(2) }
    assert_output("9.0\n") { puts square(3.0) }
    assert_output("30.25\n") { puts square(5.5) }
    assert_output("30.25\n") { puts square(-5.5) }
  end
end
