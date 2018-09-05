require 'minitest/autorun'
require './lib/primerange'

class PrimeRangeTest < Minitest::Test
  def test_primerange
    assert_equal [], primerange(-1.1)
    assert_equal [], primerange(-1)
    assert_equal [], primerange(0)
    assert_equal [], primerange(1)
    assert_equal [2], primerange(2)
    assert_equal [2, 3], primerange(3)
    assert_equal [2, 3], primerange(4)
    assert_equal [2, 3, 5], primerange(5)

    assert_output("[2]\n") { p primerange(2) }
    assert_output("2\n3\n") { puts primerange(3) }
    assert_output("[2, 3, 5]\n") { print primerange(5), "\n" }
  end
end
