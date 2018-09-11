require 'minitest/autorun'
require './lib/min'

class MinTest < Minitest::Test
  def test_min
    assert_equal 1, min(1, 2)
    assert_equal 1, min(*[1, 2])
    assert_equal 1, min(3, 2, 1)
    assert_equal 1, min(*[3, 2, 1])
    assert_equal 1, min(2, 3, 1)
    assert_equal 1, min(*[2, 3, 1])
    assert_equal(-2, min(-2, 3, 1))
    assert_equal(-2, min(*[-2, 3, 1]))
    assert_equal(-2, min(-2, 3, 1.0))
    assert_equal(-2.0, min(*[-2, 3, 1.0]))
    assert_equal(-2.0, min(*[-2.0, 3, 1.0]))

    assert_output("1\n") { p min(1, 2) }
    assert_output("1\n") { p min(*[1, 2]) }
    assert_output("1\n") { puts min(1, 2, 3)}
    assert_output("1\n") { puts min(*[1, 2, 3])}
    assert_output("1.0\n") { puts min(1.0, 2, 3)}
    assert_output("1.0\n") { puts min(*[1.0, 2, 3.0])}
    assert_output("-2.0\n") { puts min(*[1.0, -2.0, 3.0])}
  end
end
