#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/sort'

class SortTest < Minitest::Test
  def test_sort
    my_ary = [3, 2, 1]

    assert_equal [1, 2, 3], sort(my_ary)
    assert_equal [1, 2.0, 3], sort([3, 2.0, 1])
    assert_equal [-3, -2, -1], sort([-1, -2, -3])
    assert_equal ['a', 'b', 'c'], sort(['b', 'a', 'c'])

    assert_output("[1, 2, 3]\n") { p sort([3, 2, 1])}
    assert_output("1\n2\n3\n") { puts sort([3, 2, 1])}
    assert_output("[1, 2, 3]\n") { p sort(my_ary)}
    assert_output("1\n2\n3\n") { puts sort(my_ary)}
    assert_output("[\"a\", \"b\", \"c\"]\n") { p sort(['b', 'a', 'c']) }
    assert_output("a\nb\nc\n") { puts sort(['b', 'a', 'c']) }
  end
end
