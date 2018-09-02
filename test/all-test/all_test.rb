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
    assert_equal 1, add(mod(1, 2), mod(2, 2))
    assert_equal 8, add(square(2), square(2))
    assert_equal 19, sub(cube(3), cube(2))
    assert_equal 64, mul(pow(2, 3), pow(2, 3))
    assert_equal 2, constant(1) + constant(1)
    assert_equal 0, mean([1, 2, 3]) - mean([1, 2, 3])
    assert_equal 60, div(factorial(5), 2)
    assert_equal 3, mean([gcd(4, 24), gcd(2, 24)])
    assert_equal 3.0, mean([gcd(4, 24), gcd(2, 24)])
    assert_equal true, le(constant(1), constant(1.0))
    assert_equal false, lt(constant(1), constant(1.0))
    assert_equal [2, 4, 6, 8, 10, 12, 14, 16, 18], mulseq(add(1, 0), add(1, 8), 2)
    assert_equal 2, factorial(nextnum(1))
    assert_equal 56, nextnum(spadd(1, 10))
    assert_equal 1, nextnum(antenum(1))
    assert_equal 1440, add(perm(10, 3), perm(10, 3))
    assert_equal 240, add(comb(10, 3), comb(10, 3))
    assert_equal [8, 9, 10], sort([add(1, 9), add(1, 8), add(1, 7)])
    assert_equal [8, 9, 10], spsort(add(1, 9), add(1, 8), add(1, 7))
    assert_equal [1, 2, 4, 5, 10, 20], divisors(mul(add(1, 9), 2))

    # assert_output: p:
    assert_output("10\n") { p add(add(add(1, 2), 3), 4) }
    assert_output("9\n") { p sub(add(add(add(1, 2), 3), 4), 1) }
    assert_output("18\n") { p mul(sub(add(add(add(1, 2), 3), 4), 1), 2) }
    assert_output("9\n") {
      p div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    }
    #
    res1 = div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    assert_output("9\n") { p res1 }
    #
    assert_output("1\n") { p add(mod(1, 2), mod(2, 2)) }
    assert_output("8\n") { p add(square(2), square(2)) }
    assert_output("19\n") { p sub(cube(3), cube(2)) }
    assert_output("2\n") { p constant(1) + constant(1) }
    assert_output("0.0\n") { p mean([1, 2, 3]) - mean([1, 2, 3]) }
    assert_output("64\n") { p mul(pow(2, 3), pow(2, 3)) }
    assert_output("60\n") { p div(factorial(5), 2) }
    assert_output("3.0\n") { p mean([gcd(4, 24), gcd(2, 24)]) }
    assert_output("true\n") { p le(constant(1), constant(1.0)) }
    assert_output("false\n") { p lt(constant(1), constant(1.0)) }
    assert_output("[2, 4, 6, 8, 10, 12, 14, 16, 18]\n") {
      p mulseq(add(1, 0), add(1, 8), 2)
    }
    mulseq1 = mulseq(add(1, 0), add(1, 8), 2)
    assert_output("[2, 4, 6, 8, 10, 12, 14, 16, 18]\n") { p mulseq1 }
    assert_output("2\n") { p factorial(nextnum(1)) }
    assert_output("56\n") { p nextnum(spadd(1, 10)) }
    assert_output("1\n") { p nextnum(antenum(1)) }
    assert_output("1440\n") { p add(perm(10, 3), perm(10, 3)) }
    assert_output("240\n") { p add(comb(10, 3), comb(10, 3)) }
    assert_output("[8, 9, 10]\n") { p sort([add(1, 9), add(1, 8), add(1, 7)]) }
    assert_output("[8, 9, 10]\n") { p spsort(add(1, 9), add(1, 8), add(1, 7)) }
    assert_output("[1, 2, 4, 5, 10, 20]\n") { p divisors(mul(add(1, 9), 2)) }

    # assert_output: puts:
    assert_output("10\n") { puts add(add(add(1, 2), 3), 4) }
    assert_output("9\n") { puts sub(add(add(add(1, 2), 3), 4), 1) }
    assert_output("18\n") { puts mul(sub(add(add(add(1, 2), 3), 4), 1), 2) }
    assert_output("9\n") { puts div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2) }
    #
    res1 = div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2)
    assert_output("9\n") { puts res1 }
    #
    assert_output("1\n") { puts add(mod(1, 2), mod(2, 2)) }
    assert_output("8\n") { puts add(square(2), square(2)) }
    assert_output("19\n") { puts sub(cube(3), cube(2)) }
    assert_output("2\n") { puts constant(1) + constant(1) }
    assert_output("0.0\n") { puts mean([1, 2, 3]) - mean([1, 2, 3]) }
    assert_output("64\n") { puts mul(pow(2, 3), pow(2, 3)) }
    assert_output("60\n") { puts div(factorial(5), 2) }
    assert_output("3.0\n") { puts mean([gcd(4, 24), gcd(2, 24)]) }
    assert_output("true\n") { puts le(constant(1), constant(1.0)) }
    assert_output("false\n") { puts lt(constant(1), constant(1.0)) }
    assert_output("2\n4\n6\n8\n10\n12\n14\n16\n18\n") {
      puts mulseq(add(1, 0), add(1, 8), 2)
    }
    assert_output("2\n4\n6\n8\n10\n12\n14\n16\n18\n") {
      puts mulseq1
    }
    assert_output("2\n") { puts factorial(nextnum(1)) }
    assert_output("56\n") { puts nextnum(spadd(1, 10)) }
    assert_output("1\n") { puts nextnum(antenum(1)) }
    assert_output("1440\n") { puts add(perm(10, 3), perm(10, 3)) }
    assert_output("240\n") { puts add(comb(10, 3), comb(10, 3)) }
    assert_output("8\n9\n10\n") { puts sort([add(1, 9), add(1, 8), add(1, 7)]) }
    assert_output("8\n9\n10\n") { puts spsort(add(1, 9), add(1, 8), add(1, 7)) }
    assert_output("1\n2\n4\n5\n10\n20\n") { puts divisors(mul(add(1, 9), 2)) }

    # assert_output: print:
    assert_output("9\n") {
      print div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2), "\n" }
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
