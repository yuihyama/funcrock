require 'minitest/autorun'
require './lib/notdivisor_count'

class NotdivisorCountTest < Minitest::Test
  def test_notdivisor_count
    assert_equal 1, notdivisor_count(3)
    assert_equal 1, notdivisor_count(4)
    assert_equal 3, notdivisor_count(5)
    assert_equal 6, notdivisor_count(12)
    assert_equal 6, notdivisor_count(-12)
    assert_equal 0, notdivisor_count(1)
    assert_equal 0, notdivisor_count(0)
    assert_equal 0, notdivisor_count(12.1)

    assert_output("6\n") { p notdivisor_count(12) }
    assert_output("6\n") { puts notdivisor_count(12) }
    assert_output("6\n") { puts notdivisor_count(-12) }
    assert_output("0\n") { puts notdivisor_count(0) }
    assert_output("0\n") { puts notdivisor_count(1) }
    assert_output("0\n") { puts notdivisor_count(12.1) }
  end
end
