require 'minitest/autorun'
require './lib/even'

class EvenTest < Minitest::Test
  def test_even
    assert_equal [0], even(0)
    assert_equal [2], even(1, 2, 3)
    assert_equal [-2, 2], even(-2, 1, 2, 3)
    #
    my_ary = [1, 2, 3, 4]
    assert_equal [2, 4], even(*my_ary)
    #
    assert_equal [0, 2, 4, 6, 8, 10], even(*(0..10).to_a)

    assert_raises(NoMethodError) { even(2.2) }

    assert_output("[0]\n") { p even(0) }
    assert_output("[2, 4]\n") { p even(1, 2, 3, 4) }
    assert_output("-2\n2\n") { puts even(-2, 1, 2, 3) }
    assert_output("2\n4\n") { puts even(*my_ary) }
    assert_output("0\n2\n4\n") { puts even(*(0..4).to_a) }
    assert_output("[2, 4]\n") { print even(1, 2, 3, 4), "\n" }
  end
end
