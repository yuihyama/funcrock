require 'minitest/autorun'
require './lib/primefactors'

class PrimeFactorsTest < Minitest::Test
  def test_primefactors
    assert_equal [], primefactors(1)
    assert_equal [2], primefactors(2)
    assert_equal [3], primefactors(3)
    assert_equal [2], primefactors(4)
    assert_equal [5], primefactors(5)
    assert_equal [2, 3], primefactors(6)
    assert_equal [2, 5], primefactors(10)
    assert_equal [2, 5], primefactors(20)
    assert_equal [2, 3, 5], primefactors(30.0)
    assert_equal [2, 3, 5], primefactors(-30)
    assert_equal [2, 3, 5], primefactors(-30.3)

    assert_raises(ZeroDivisionError) { primefactors(0) }

    assert_output("[]\n") { p primefactors(1) }
    assert_output("[2, 3]\n") { p primefactors(6) }
    assert_output("2\n3\n5\n") { puts primefactors(30) }
    assert_output("[3, 5]\n") { print primefactors(45), "\n" }
  end
end
