require 'minitest/autorun'
require './lib/range'

class RangeTest < Minitest::Test
  def test_range
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], range(1, 10)
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], range(1, 10, 1)
    assert_equal [0, 2, 4, 6, 8, 10], range(0, 10, 2)
    assert_equal [-3, -2, -1, 0, 1, 2, 3], range(-3, 3, 1)
    assert_equal [1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6], range(1.0, 1.6, 0.1)
    assert_equal [1.0, 1.3, 1.6], range(1.0, 1.6, 0.3)
    assert_equal [-1.5, -1.0, -0.5, 0, 0.5, 1.0, 1.5], range(-1.5, 1.5, 0.5)

    assert_output("[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n") { p range(0, 10, 1) }
    assert_output("-3\n-2\n-1\n0\n1\n2\n3\n") { puts range(-3, 3, 1) }
    assert_output("[-1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5]\n") {
      print range(-1.5, 1.5, 0.5), "\n"
    }
  end
end
