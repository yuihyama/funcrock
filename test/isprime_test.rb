require 'minitest/autorun'
require './lib/isprime'

class IsPrime < Minitest::Test
  def test_isprime
    assert isprime(3)

    assert_equal false, isprime(-1)
    assert_equal false, isprime(0)
    assert_equal false, isprime(1)
    assert_equal true, isprime(2)
    assert_equal true, isprime(3)
    assert_equal false, isprime(4)

    assert_raises(ArgumentError) { isprime(1.1) }

    assert_output("true\n") { p isprime(2) }
    assert_output("true\n") { puts isprime(3) }
    assert_output("false\n") { puts isprime(4) }
  end
end
