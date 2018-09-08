require 'minitest/autorun'
require './lib/remainder'

class RemainderTest < Minitest::Test
  def test_remainder
    assert_equal 0, remainder(1, 1)
    assert_equal 1, remainder(7, 2)
    assert_equal 1.0, remainder(7, 1.5)
    assert_equal 1, remainder(7, 1.5)
    assert_equal(-1, remainder(-9, 2))
    assert_equal 1, remainder(9, -2.0)
    assert_equal 1.0, remainder(9.0, -2.0)
    assert_equal(-1.0, remainder(-9.0, -2.0))

    assert_in_delta 0.6, remainder(9, 1.4)
    assert_in_delta 0.600, remainder(9, 1.4)

    assert_raises(ZeroDivisionError) { remainder(1, 0) }

    assert_output("0\n") { p remainder(1, 1) }
    assert_output("1\n") { puts remainder(7, 2) }
    assert_output("1.0\n") { puts remainder(7, 1.5) }
    assert_output("1\n") { puts remainder(9, -2) }
    assert_output("-1\n") { puts remainder(-9, 2) }
    assert_output("-1.0\n") { puts remainder(-9.0, -2.0) }
  end
end
