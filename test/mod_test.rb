#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/mod'

class ModTest < Minitest::Test
  def test_mod
    assert mod(1, 2)
    assert mod(2, 1)
    assert mod(3.5, 2)

    assert_equal 1, mod(1, 2)
    assert_equal 0, mod(2, 1)
    assert_equal 1.5, mod(3.5, 2)
    assert_equal 1, mod(-1.0, 2)
    assert_equal -1, mod(1, -2.0)
    assert_equal -1, mod(-1.0, -2.0)
    assert_equal 1, mod(-1.0, 2.0)
    assert_equal -1, mod(1.0, -2.0)

    assert_output("1\n") { puts mod(1, 2) }
    assert_output("0\n") { puts mod(2, 1) }
    assert_output("1.0\n") { puts mod(1.0, 2) }
    assert_output("0.0\n") { puts mod(2.0, 1.0) }
    assert_output("1.5\n") { puts mod(3.5, 2) }
    assert_output("1.0\n") { puts mod(-1.0, 2) }
    assert_output("-1.0\n") { puts mod(1, -2.0) }
    assert_output("-1.0\n") { puts mod(-1.0, -2.0) }
  end
end
