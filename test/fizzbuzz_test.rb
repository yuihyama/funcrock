require 'minitest/autorun'
require './lib/fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_fizzbuzz
    assert_nil fizzbuzz(0)
    assert_nil fizzbuzz(-1)
    assert_nil fizzbuzz(2.2)

    assert_raises(ArgumentError) { fizzbuzz('a') }

    assert_equal 1, fizzbuzz(1)
    assert_equal 2, fizzbuzz(2)
    assert_equal 'Fizz', fizzbuzz(3)
    assert_equal 4, fizzbuzz(4)
    assert_equal 'Buzz', fizzbuzz(5)
    assert_equal 'Fizz', fizzbuzz(6)
    assert_equal 'Fizz Buzz', fizzbuzz(15)
    assert_equal 16, fizzbuzz(16)

    assert_output("1\n") { p fizzbuzz(1) }
    assert_output("2\n") { puts fizzbuzz(2) }
    assert_output("Fizz\n") { puts fizzbuzz(3) }
    assert_output("Buzz\n") { puts fizzbuzz(5) }
    assert_output("Fizz Buzz\n") { puts fizzbuzz(15) }
    assert_output("16\n") { puts fizzbuzz(16) }
  end
end
