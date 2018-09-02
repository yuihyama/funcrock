require 'minitest/autorun'
require './lib/perm'

class PermTest < Minitest::Test
  def test_perm
    assert_equal 1, perm(0, 0)
    assert_equal 0, perm(0, 1)
    assert_equal 1, perm(1, 0)
    assert_equal 1, perm(1, 1)
    assert_equal 2, perm(2, 2)
    assert_equal 6, perm(3, 3)
    assert_equal 24, perm(4.0, 4)
    assert_equal 120, perm(5, 5.0)
    assert_equal 0, perm(-5, 5)
    assert_equal 0, perm(5, -5)
    assert_equal 0, perm(-5, -5)
    assert_equal 0, perm(-5.0, -5)
    assert_equal 0, perm(-5, -5.0)
    assert_equal 0, perm(-5.0, -5.0)
    assert_equal 720, perm(10, 3)
    assert_equal 1680, perm(8, 4)
    assert_equal 7, perm(7, 1)

    assert_output("720\n") { p perm(10, 3) }
    assert_output("720\n") { puts perm(10, 3) }
    assert_output("120\n") { puts perm(5, 5.0) }
  end
end
