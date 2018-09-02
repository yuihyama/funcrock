require 'minitest/autorun'
require './lib/comb'

class CombTest < Minitest::Test
  def test_comb
    assert_equal 1, comb(0, 0)
    assert_equal 0, comb(0, 1)
    assert_equal 1, comb(1, 0)
    assert_equal 1, comb(1, 1)
    assert_equal 1, comb(2, 2)
    assert_equal 1, comb(3, 3)
    assert_equal 1, comb(4.0, 4)
    assert_equal 1, comb(5, 5.0)
    assert_equal 1, comb(5, 5.0)
    assert_equal 0, comb(-5, 5)
    assert_equal 0, comb(5, -5)
    assert_equal 0, comb(-5, -5)
    assert_equal 0, comb(-5.0, -5)
    assert_equal 0, comb(-5, -5.0)
    assert_equal 0, comb(-5.0, -5.0)
    assert_equal 120, comb(10, 3)
    assert_equal 6, comb(6, 1)
    assert_equal 56, comb(8, 3)

    assert_output("120\n") { p comb(10, 3) }
    assert_output("120\n") { puts comb(10, 3) }
    assert_output("1\n") { puts comb(5, 5.0) }
  end
end
