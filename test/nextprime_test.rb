require 'minitest/autorun'
require './lib/nextprime'

class NextPrimeTest < Minitest::Test
  def test_nextprime
    assert_equal "It's a pretty big number. I'll fix this program in the future.", \
      nextprime(100000000000000001)
    assert_equal 2, nextprime(-1)
    assert_equal 2, nextprime(0)
    assert_equal 2, nextprime(1)
    assert_equal 5, nextprime(4)
    assert_equal 7, nextprime(5)
    assert_equal 13, nextprime(11)
    assert_equal 19, nextprime(17)
    assert_equal 10006741, nextprime(10006721)

    assert_raises(TypeError) { nextprime(1.1) }

    assert_output("2\n") { p nextprime(1) }
    assert_output("It's a pretty big number. I'll fix this program in the future.\n") {
      puts nextprime(100000000000000001)
    }
    assert_output("5\n") { puts nextprime(4) }
    assert_output("7\n") { puts nextprime(5) }
    assert_output("10006741\n") { puts nextprime(10006721) }
  end
end
