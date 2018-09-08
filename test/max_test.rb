require 'minitest/autorun'
require './lib/max'

class MaxTest < Minitest::Test
  def test_max
    assert_equal 2, max(1, 2)
    assert_equal 2, max(*[1, 2])
    assert_equal 3, max(3, 2, 1)
    assert_equal 3, max(*[3, 2, 1])
    assert_equal 3, max(2, 3, 1)
    assert_equal 3, max(*[2, 3, 1])
    assert_equal 3, max(-2, 3, 1)
    assert_equal 3, max(*[-2, 3, 1])
    assert_equal 3, max(-2, 3, 1.0)
    assert_equal 3, max(*[-2, 3, 1.0])

    assert_output("2\n") { p max(1, 2) }
    assert_output("2\n") { p max(*[1, 2]) }
    assert_output("3\n") { puts max(1, 2, 3)}
    assert_output("3\n") { puts max(*[1, 2, 3])}
    assert_output("3.0\n") { puts max(1, 2, 3.0)}
    assert_output("3.0\n") { puts max(*[1, 2, 3.0])}
  end
end
