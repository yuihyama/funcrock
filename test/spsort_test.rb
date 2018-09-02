#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/spsort'

class SpSortTest < Minitest::Test
  def test_spsort
    assert_equal [1, 2.0, 3], spsort(3, 2.0, 1)
    assert_equal [-3, -2, -1], spsort(-1, -2, -3)
    assert_equal ['a', 'b', 'c'], spsort('b', 'a', 'c')

    assert_output("[1, 2, 3]\n") { p spsort(3, 2, 1)}
    assert_output("1\n2\n3\n") { puts spsort(3, 2, 1)}
    assert_output("[\"a\", \"b\", \"c\"]\n") { p spsort('b', 'a', 'c') }
    assert_output("a\nb\nc\n") { puts spsort('b', 'a', 'c') }
  end
end
