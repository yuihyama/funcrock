require 'minitest/autorun'
require './lib/randprime'

class RandPrimeTest < Minitest::Test
  def test_randprime
    assert randprime(10)
  end
end
