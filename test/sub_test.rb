#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/sub'

class SubTest < Minitest::Test
  def test_sub
    assert_equal 0, sub(0, 0)
    assert_equal 0, sub(0.0, 0.0)
    assert_equal 1, sub(2, 1)
    assert_equal 1, sub(2.0, 1.0)
    assert_equal 1, sub(-1, -2)

    assert sub(1, 2)
    assert sub(-1, -2)

    assert_output("0\n") {puts sub(0, 0)}
    assert_output("0.0\n") {puts sub(0.0, 0.0)}
    assert_output("1\n") {puts sub(2, 1)}
    assert_output("1\n") {puts sub(-1, -2)}
  end
end
