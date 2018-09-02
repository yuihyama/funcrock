require 'minitest/autorun'
require './lib/nextnum'

class NextNumTest < Minitest::Test
  def test_nextnum
    assert_equal 0, nextnum(-1)
    assert_equal 1, nextnum(0)
    assert_equal 2, nextnum(1)
    assert_equal 0.1, nextnum(0.0)
    assert_equal 0.0, nextnum(-0.1)
    assert_equal 1.2000000000000002, nextnum(1.1)
    assert_equal 1.3, nextnum(1.2)

    assert_output("2\n") { p nextnum(1) }
    assert_output("2\n") { puts nextnum(1) }
    assert_output("0.1\n") { puts nextnum(0.0) }
    assert_output("0.0\n") { puts nextnum(-0.1) }
    assert_output("1.2000000000000002\n") { puts nextnum(1.1) }
    assert_output("1.3\n") { puts nextnum(1.2) }
  end
end
