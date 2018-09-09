require 'minitest/autorun'
require './lib/sum'

class SumTest < Minitest::Test
  def test_sum
    assert_equal 6, sum(1, 2, 3)
    assert_equal 6, sum(*[1, 2, 3])
    assert_equal 4, sum(*[-1, 2, 3])
    assert_equal 2, sum(*[1, -2, 3.0])
    assert_equal 2.0, sum(*[1, -2, 3.0])
    assert_equal 'abc', sum(*['a', 'b', 'c'])

    assert_output("6\n") { p sum(1, 2, 3) }
    assert_output("6\n") { p sum(*[1, 2, 3]) }
    assert_output("2.0\n") { puts sum(*[1, -2, 3.0]) }
    assert_output("\"abc\"\n") { p sum(*['a', 'b', 'c']) }
    assert_output("abc\n") { puts sum(*['a', 'b', 'c']) }
    assert_output("abc\n") { print sum(*['a', 'b', 'c']), "\n" }
  end
end
