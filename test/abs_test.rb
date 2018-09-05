require 'minitest/autorun'
require './lib/abs'

class AbsTest < Minitest::Test
  def test_abs
    assert abs(-1)

    assert_equal 0, abs(0)
    assert_equal 1, abs(1)
    assert_equal 1, abs(-1)
    assert_equal 1.0, abs(-1.0)
    assert_equal 1.1, abs(-1.1)

    assert_output("0\n") { p abs(0) }
    assert_output("1\n") { puts abs(1) }
    assert_output("1\n") { puts abs(-1) }
    assert_output("1.0\n") { puts abs(-1.0) }
    assert_output("1.1\n") { puts abs(-1.1) }
  end
end
