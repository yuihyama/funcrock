require 'minitest/autorun'
require './lib/divisor_count'

class DivisorCountTest < Minitest::Test
  def test_divisor_count
    assert_equal 6, divisor_count(12)
    assert_equal 6, divisor_count(-12)
    assert_equal 8, divisor_count(24)
    assert_equal 8, divisor_count(-24)
    assert_equal 0, divisor_count(0)

    assert_output("6\n") { p divisor_count(12) }
    assert_output("6\n") { puts divisor_count(12) }
    assert_output("8\n") { puts divisor_count(-24) }
    assert_output("0\n") { puts divisor_count(0) }
    assert_output("0\n") { puts divisor_count(0.0) }
  end
end
