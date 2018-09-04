require 'minitest/autorun'
require './lib/pos'

class PosTest < Minitest::Test
  def test_pos
    assert_equal 0, pos(0)
    assert_equal(-0, pos(0))
    assert_equal 1, pos(1)
    assert_equal 1.1, pos(1.1)
    assert_equal(-1.1, pos(-1.1))
    assert_equal 0.01, pos(0.01)
    assert_equal(-0.01, pos(-0.01))

    assert_output("0\n") { p pos(0)}
    assert_output("0\n") { puts pos(0) }
    assert_output("1\n") { puts pos(1) }
    assert_output("1.1\n") { puts pos(1.1) }
    assert_output("-1.1\n") { puts pos(-1.1) }
    assert_output("0.01\n") { puts pos(0.01) }
    assert_output("-0.01\n") { puts pos(-0.01) }
  end
end
