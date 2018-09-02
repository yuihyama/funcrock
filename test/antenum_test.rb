require 'minitest/autorun'
require './lib/antenum'

class AntenumTest < Minitest::Test
  def test_antenum
    assert_equal 0, antenum(1)
    assert_equal(-1, antenum(0))
    assert_equal(-2, antenum(-1))
    assert_equal 1.0999999999999999, antenum(1.2)
    assert_equal 1.0, antenum(1.1)
    assert_equal 0.9, antenum(1.0)
    assert_equal(-1.3, antenum(-1.2))
    assert_equal(-1.0, antenum(-0.9))

    assert_output("0\n") { p antenum(1) }
    assert_output("0\n") { puts antenum(1) }
    assert_output("1.0999999999999999\n") { puts antenum(1.2) }
    assert_output("-1.3\n") { puts antenum(-1.2) }
  end
end
