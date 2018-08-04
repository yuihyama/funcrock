#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/cube'

class CubeTest < Minitest::Test
  def test_cube
    assert_equal 0, cube(0)
    assert_equal -0, cube(-0)
    assert_equal 0.0, cube(0.0)
    assert_equal -0.0, cube(-0.0)
    assert_equal 8, cube(2)
    assert_equal -8, cube(-2)
    assert_equal 27.0, cube(3.0)
    assert_equal -27.0, cube(-3)
    assert_equal -35.937, cube(-3.3)

    assert_output("0\n") { puts cube(0) }
    assert_output("0\n") { puts cube(-0) }
    assert_output("0.0\n") { puts cube(0.0) }
    assert_output("-0.0\n") { puts cube(-0.0) }
    assert_output("8\n") { puts cube(2) }
    assert_output("-8\n") { puts cube(-2) }
    assert_output("27.0\n") { puts cube(3.0) }
    assert_output("-27.0\n") { puts cube(-3.0) }
    assert_output("-35.937\n") { puts cube(-3.3) }
  end
end
