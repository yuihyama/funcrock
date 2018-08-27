#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/factorial'

class FactorialTest < Minitest::Test
  def test_factorial
    assert factorial(10)

    assert_equal 0, factorial(-1)
    assert_equal 1, factorial(0)
    assert_equal 1, factorial(1)
    assert_equal 2, factorial(2)
    assert_equal 6, factorial(3)
    assert_equal 24, factorial(4)
    assert_equal 120, factorial(5)
    assert_equal 720, factorial(6)
    assert_equal 5040, factorial(7)
    assert_equal 40320, factorial(8)
    assert_equal 362880, factorial(9)

    assert_output("24\n") { p factorial(4) }
    assert_output("362880\n") { puts factorial(9) }
  end
end
