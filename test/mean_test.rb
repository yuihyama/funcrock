#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/mean'

class MeanTest < Minitest::Test
  def test_mean
    assert_equal 2, mean([1, 2, 3])
    assert_equal 2.0, mean([1, 2.0, 3])
    assert_equal 1.3333333333333333, mean([-1, 2, 3])
    assert_equal 1.3333333333333333, mean([-1, 2.0, 3])

    assert_output("2.0\n") { puts mean([1, 2, 3]) }
    assert_output("2.0\n") { puts mean([1, 2.0, 3]) }
    assert_output("1.3333333333333333\n") { puts mean([-1, 2, 3]) }
    assert_output("1.3333333333333333\n") { puts mean([-1, 2.0, 3]) }
  end
end
