require 'minitest/autorun'
require './lib/neg'

class NegTest < Minitest::Test
  def test_neg
    assert_equal 0, neg(0)
    assert_equal(-0, neg(0))
    assert_equal 1, neg(-1)
    assert_equal 1.1, neg(-1.1)
    assert_equal(-1, neg(1))
    assert_equal(-1.1, neg(1.1))
    assert_equal(-0.01, neg(0.01))
    assert_equal 0.01, neg(-0.01)

    assert_output("0\n") { p neg(0)}
    assert_output("0\n") { puts neg(0) }
    assert_output("1\n") { puts neg(-1) }
    assert_output("1.1\n") { puts neg(-1.1) }
    assert_output("-1.1\n") { puts neg(1.1) }
    assert_output("-0.01\n") { puts neg(0.01) }
    assert_output("0.01\n") { puts neg(-0.01) }
  end
end
