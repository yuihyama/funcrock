#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/mul'

class MulTest < Minitest::Test
  def test_mul
    assert mul(1, 2)
    assert mul(-1, -2)
    assert mul(-1, 2)
    assert mul(1, -2)
    assert mul(2, 2)
    assert mul(-1.1, -2.2)
    assert mul(-1.1, 2.2)
    assert mul(1.1, -2.2)

    assert_equal 0, mul(0, 0)
    assert_equal 2, mul(1, 2)
    assert_equal 4, mul(2, 2)
    assert_equal 2.4200000000000004, mul(1.1, 2.2)
    assert_equal 2, mul(-1, -2)
    assert_equal -2, mul(-1, 2)
    assert_equal -2, mul(1, -2)
    assert_equal 2, mul(1.0, 2.0)
    assert_equal 2.4200000000000004, mul(-1.1, -2.2)
    assert_equal -2.4200000000000004, mul(-1.1, 2.2)
    assert_equal -2.4200000000000004, mul(1.1, -2.2)

    assert_output("0\n") { puts mul(0, 0)}
    assert_output("2\n") { puts mul(1, 2)}
    assert_output("2.0\n") { puts mul(1.0, 2.0)}
    assert_output("2\n") { puts mul(-1, -2)}
    assert_output("2.4200000000000004\n") { puts mul(-1.1, -2.2)}
    assert_output("121/50\n") { puts mul(1.1r, 2.2r) }
  end
end
