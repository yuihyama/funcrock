require 'minitest/autorun'
require './lib/odd'

class OddTest < Minitest::Test
  def test_odd
    assert_equal [], odd(0)
    assert_equal [1, 3], odd(1, 2, 3)
    assert_equal [1, 3], odd(-2, 1, 2, 3)
    #
    my_ary = [1, 2, 3, 4]
    assert_equal [1, 3], odd(*my_ary)
    #
    assert_equal [1, 3, 5, 7, 9], odd(*(0..10).to_a)

    assert_raises(NoMethodError) { odd(3.3) }

    assert_output("[]\n") { p odd(0) }
    assert_output("[1, 3]\n") { p odd(1, 2, 3, 4) }
    assert_output("1\n3\n") { puts odd(-2, 1, 2, 3) }
    assert_output("1\n3\n") { puts odd(*my_ary) }
    assert_output("1\n3\n5\n") { puts odd(*(0..5).to_a) }
    assert_output("[1, 3, 5]\n") { print odd(1, 2, 3, 4, 5), "\n" }
  end
end
