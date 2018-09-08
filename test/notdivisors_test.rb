require 'minitest/autorun'
require './lib/notdivisors'

class NotdivisorsTest < Minitest::Test
  def test_notdivisors
    assert_equal [2], notdivisors(3)
    assert_equal [3], notdivisors(4)
    assert_equal [2, 3, 4], notdivisors(5)
    assert_equal [5, 7, 8, 9, 10, 11], notdivisors(12)
    assert_equal [5, 7, 8, 9, 10, 11], notdivisors(-12)
    assert_equal [], notdivisors(1)
    assert_equal [], notdivisors(0)
    assert_equal [], notdivisors(12.1)

    assert_output("[5, 7, 8, 9, 10, 11]\n") { p notdivisors(12) }
    assert_output("5\n7\n8\n9\n10\n11\n") { puts notdivisors(12) }
    assert_output("[5, 7, 8, 9, 10, 11]\n") { print notdivisors(12), "\n" }
    assert_output("[]\n") { p notdivisors(1) }
    assert_output("") { puts notdivisors(1) }
    assert_output("[]\n") { print notdivisors(1), "\n" }
  end
end
