#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/le'

class LETest < Minitest::Test
  def test_le
    assert_equal true, le(0, 0)
    assert_equal true, le(0.0, 0.0)
    assert_equal true, le(-0, -0)
    assert_equal true, le(-0.0, -0.0)
    assert_equal true, le(-0.0, 0.0)
    assert_equal true, le(0.0, -0.0)
    assert_equal true, le(1, 2)
    assert_equal true, le(1.1, 2.2)
    assert_equal true, le(-1.1, 2.2)
    assert_equal false, le(1, 0)
    assert_equal false, le(2, 1)
    assert_equal false, le(2, 1.1)
    assert_equal false, le(2, -1)
    assert_equal false, le(2, -1.1)

    assert_output("true\n") { puts le(0, 0) }
    assert_output("true\n") { puts le(1, 1) }
    assert_output("true\n") { puts le(1, 2) }
    assert_output("true\n") { puts le(1.1, 2.2) }
    assert_output("true\n") { puts le(-1.1, 2.2) }
    assert_output("false\n") { puts le(2, 1) }
    assert_output("false\n") { puts le(2, 1.1) }
    assert_output("false\n") { puts le(2, -1) }
    assert_output("false\n") { puts le(2, -1.1) }
  end
end
