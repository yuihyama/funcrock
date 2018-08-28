#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/spadd'

class SpAddTest < Minitest::Test
  def test_spadd
    assert spadd(1, 2)

    assert_equal 55, spadd(1, 10)
    assert_equal 54, spadd(-1, 10)
    assert_equal 0, spadd(0, 0)
    assert_equal 0, spadd(-1, 1)

    assert_raises(TypeError) { spadd(1.0, 10) }

    assert_output("55\n") { p spadd(1, 10) }
    assert_output("55\n") { puts spadd(1, 10) }
  end
end
