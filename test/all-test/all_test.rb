#!/usr/bin/env ruby

require 'minitest/autorun'

# require './lib/*.rb':
#
Dir[File.expand_path('../../../lib', __FILE__) << '/*.rb'].each do |file|
  require file
end
# $ cd funcrock
# $ ruby test/all-test/all_test.rb
# or
# cd funcrock/test/all-test
# ruby all_test.rb

# one file:
#
# require './lib/add'
# or
# require_relative '../../lib/add'
# $ cd funcrock
# $ ruby test/all-test/all_test.rb
#
# require '../../lib/add'
# $ cd funcrock/test/all-test
# $ ruby all_test.rb

class AllTest < Minitest::Test
  def test_all
    # assert_equal:
    assert_equal 10, add(add(add(1, 2), 3), 4)
    assert_equal 9, sub(add(add(add(1, 2), 3), 4), 1)
    assert_equal 18, mul(sub(add(add(add(1, 2), 3), 4), 1), 2)
    assert_equal 9, div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    #
    res1 = div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    assert_equal 9, res1
    #
    assert_equal 8, add(square(2), square(2))
    assert_equal 19, sub(cube(3), cube(2))
    assert_equal 2, constant(1) + constant(1)

    # assert_output: p:
    assert_output("10\n") { p add(add(add(1, 2), 3), 4) }
    assert_output("9\n") { p sub(add(add(add(1, 2), 3), 4), 1) }
    assert_output("18\n") { p mul(sub(add(add(add(1, 2), 3), 4), 1), 2) }
    assert_output("9\n") { p \
      div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2) }
    #
    res1 = div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    assert_output("9\n") { p res1 }
    #
    assert_output("8\n") { p add(square(2), square(2)) }
    assert_output("19\n") { p sub(cube(3), cube(2)) }
    assert_output("2\n") { p constant(1) + constant(1) }

    # assert_output: puts:
    assert_output("10\n") { puts add(add(add(1, 2), 3), 4) }
    assert_output("9\n") { puts sub(add(add(add(1, 2), 3), 4), 1) }
    assert_output("18\n") { puts mul(sub(add(add(add(1, 2), 3), 4), 1), 2) }
    assert_output("9\n") { puts div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2) }
    #
    res1 = div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    assert_output("9\n") { puts res1 }
    #
    assert_output("8\n") { puts add(square(2), square(2)) }
    assert_output("19\n") { puts sub(cube(3), cube(2)) }
    assert_output("2\n") { puts constant(1) + constant(1) }

    # assert_output: print:
    assert_output("9\n") { print \
      div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2), "\n" }
    assert_output("8\n") { print add(square(2), square(2)), "\n" }

    # assert_output: printf: add()
    assert_output("10\n") { printf "%d\n", add(add(add(1, 2), 3), 4) }

    # assert_output: sprinf: add()
    assert_output("\"10\"\n") { p sprintf "%d", add(add(add(1, 2), 3), 4) }
    assert_output("\"10\"\n") { p sprintf("%d", add(add(add(1, 2), 3), 4)) }
    assert_output("\"10\"\n") { p sprintf "%d" % add(add(add(1, 2), 3), 4) }
    assert_output("\"10\"\n") { p sprintf "%s", add(add(add(1, 2), 3), 4) }
    assert_output("\"10\"\n") { p sprintf("%s", add(add(add(1, 2), 3), 4)) }
    assert_output("\"10\"\n") { p sprintf "%s" % add(add(add(1, 2), 3), 4) }
  end
end
