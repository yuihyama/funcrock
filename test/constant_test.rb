#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/constant'

class ConstantTest < Minitest::Test
  def test_constant
    assert_equal 0, constant(0)
    assert_equal 0.0, constant(0)
    assert_equal(-0, constant(-0))
    assert_equal(-0.0, constant(-0.0))
    assert_equal 1, constant(1)

    assert_output("0\n") { puts constant(0) }
    assert_output("0.0\n") { puts constant(0.0) }
    assert_output("0\n") { puts constant(-0) }
    assert_output("-0.0\n") { puts constant(-0.0) }
    assert_output("1\n") { puts constant(1) }
  end
end
