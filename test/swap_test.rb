require 'minitest/autorun'
require './lib/swap'

class SwapTest < Minitest::Test
  def test_swap
    assert_equal [2, 1], swap(1, 2)
    assert_equal ['b', 'a'], swap('a', 'b')

    assert_output("[2, 1]\n") { p swap(1, 2) }
    assert_output("2\n1\n") { puts swap(1, 2) }
    assert_output("[\"b\", \"a\"]\n") { p swap('a', 'b') }
    assert_output("b\na\n") { puts swap('a', 'b') }
  end
end
