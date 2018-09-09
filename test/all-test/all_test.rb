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
  def test_all_a
    # assert:
    assert randprime(100)
    assert date()
    assert date
  end

  def test_all_an
    # assert_nil:
    assert_nil println(1)
    assert_nil time()
    assert_nil time
  end

  def test_all_ae
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
    assert_equal 1, remainder(add(1, 6), add(1, 1))
    assert_equal 1.0, remainder(add(1, 6), add(1, 0.5))
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
    assert_equal 4, divisor_count(pow(2, 3))
    assert_equal [5, 7, 8, 9, 10, 11], notdivisors(sub(add(19, 1), 8))
    assert_equal 4, notdivisor_count(pow(2, 3))
    assert_equal [1, 2], swap(mul(1, 2), mul(1, 1))
    assert_equal true, iseven(div(4, 2))
    assert_equal false, iseven(div(6, 2))
    assert_equal true, isodd(div(6, 2))
    assert_equal false, isodd(div(4, 2))
    assert_equal 2, mean([pos(1), pos(2), pos(3)])
    assert_equal(-2, mean([neg(1), neg(2), neg(3)]))
    assert_equal true, isprime(pos(3))
    assert_equal [2, 3, 5], primerange(neg(-5))
    assert_equal 11, nextprime(pos(3) + (-neg(4)))
    assert_equal 6.283185307179586, TAU
    assert_equal 0.5772156649015329, EULER_GAMMA
    assert_equal 6.6, var([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
    #
    v_s_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]
    assert_equal 7.333333333333333, var(v_s_ary, degree_of_freedom = 1)
    assert_equal 7.333, var(v_s_ary, degree_of_freedom = 1).round(3)
    assert_equal 2.569046515733026, std(v_s_ary)
    assert_equal 2.569046515733026, std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
    assert_equal 2.569, std(v_s_ary).round(3)
    assert_equal 2.70801280154532, std(v_s_ary, degree_of_freedom = 1)
    assert_equal 2.708, std(v_s_ary, 1).round(3)
    #
    assert_equal 4, max(pow(2, 1), mul(2, 2))
    assert_equal 4, max(*[pow(2, 1), mul(2, 2)])
    assert_equal 6, sum(constant(1), constant(2), constant(3))
    assert_equal 6, sum(*[constant(1), constant(2), constant(3)])
    assert_equal [1, 2, 3, 4, 5], range(constant(1), constant(5))
    assert_equal [0, 2, 4], even(*range(0, 4))
  end

  def test_all_ao_p
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
    assert_output("1\n") { p remainder(add(1, 6), add(1, 1)) }
    assert_output("1.0\n") { p remainder(add(1, 6), add(1, 0.5)) }
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
    assert_output("4\n") { p divisor_count(pow(2, 3)) }
    assert_output("[5, 7, 8, 9, 10, 11]\n") { p notdivisors(sub(add(19, 1), 8)) }
    assert_output("4\n") { p notdivisor_count(pow(2, 3)) }
    assert_output("[1, 2]\n") { p swap(mul(1, 2), mul(1, 1)) }
    assert_output("true\n") { p iseven(div(4, 2)) }
    assert_output("false\n") { p iseven(div(6, 2)) }
    assert_output("true\n") { p isodd(div(6, 2)) }
    assert_output("false\n") { p isodd(div(4, 2)) }
    assert_output("2.0\n") { p mean([pos(1), pos(2), pos(3)]) }
    assert_output("true\n") { p isprime(pos(3)) }
    assert_output("[2, 3, 5]\n") { p primerange(neg(-5)) }
    assert_output("11\n") { p nextprime(pos(3) + (-neg(4))) }
    assert_output("6.283185307179586\n") { p TAU }
    assert_output("0.5772156649015329\n") { p EULER_GAMMA }
    v_s_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]
    assert_output("6.6\n") { p var(v_s_ary) }
    assert_output("2.569046515733026\n") { p std(v_s_ary) }
    assert_output("4\n") { p max(pow(2, 1), mul(2, 2)) }
    assert_output("4\n") { p max(*[pow(2, 1), mul(2, 2)]) }
    assert_output("6\n") { p sum(constant(1), constant(2), constant(3)) }
    assert_output("6\n") { p sum(*[constant(1), constant(2), constant(3)]) }
    assert_output("[1, 2, 3, 4, 5]\n") { p range(constant(1), constant(5)) }
    assert_output("[0, 2, 4]\n") { p even(*range(0, 4)) }
  end

  def test_all_ao_puts
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
    assert_output("1\n") { puts remainder(add(1, 6), add(1, 1)) }
    assert_output("1.0\n") { puts remainder(add(1, 6), add(1, 0.5)) }
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
    #
    mulseq2 = mulseq(add(1, 0), add(1, 8), 2)
    assert_output("2\n4\n6\n8\n10\n12\n14\n16\n18\n") {
      puts mulseq2
    }
    #
    assert_output("2\n") { puts factorial(nextnum(1)) }
    assert_output("56\n") { puts nextnum(spadd(1, 10)) }
    assert_output("1\n") { puts nextnum(antenum(1)) }
    assert_output("1440\n") { puts add(perm(10, 3), perm(10, 3)) }
    assert_output("240\n") { puts add(comb(10, 3), comb(10, 3)) }
    assert_output("8\n9\n10\n") { puts sort([add(1, 9), add(1, 8), add(1, 7)]) }
    assert_output("8\n9\n10\n") { puts spsort(add(1, 9), add(1, 8), add(1, 7)) }
    assert_output("1\n2\n4\n5\n10\n20\n") { puts divisors(mul(add(1, 9), 2)) }
    assert_output("4\n") { puts divisor_count(pow(2, 3)) }
    assert_output("5\n7\n8\n9\n10\n11\n") { puts notdivisors(sub(add(19, 1), 8)) }
    assert_output("4\n") { puts notdivisor_count(pow(2, 3)) }
    assert_output("1\n2\n") { puts swap(mul(1, 2), mul(1, 1)) }
    assert_output("true\n") { puts iseven(div(4, 2)) }
    assert_output("false\n") { puts iseven(div(6, 2)) }
    assert_output("true\n") { puts isodd(div(6, 2)) }
    assert_output("false\n") { puts isodd(div(4, 2)) }
    assert_output("2.0\n") { puts mean([pos(1), pos(2), pos(3)]) }
    assert_output("true\n") { puts isprime(pos(3)) }
    assert_output("2\n3\n5\n") { puts primerange(neg(-5)) }
    assert_output("11\n") { puts nextprime(pos(3) + (-neg(4))) }
    assert_output("6.283185307179586\n") { puts TAU }
    assert_output("0.5772156649015329\n") { puts EULER_GAMMA }
    #
    v_s_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]
    assert_output("6.6\n") { puts var(v_s_ary) }
    assert_output("7.333333333333333\n") {
      puts var(v_s_ary, degree_of_freedom = 1)
    }
    assert_output("7.333\n") {
      puts var([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1).round(3)
    }
    assert_output("2.569046515733026\n") { p std(v_s_ary) }
    assert_output("2.569046515733026\n") {
      puts std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
    }
    assert_output("2.569\n") { puts std(v_s_ary).round(3) }
    assert_output("2.70801280154532\n") {
      puts std(v_s_ary, degree_of_freedom = 1)
    }
    assert_output("2.708\n") {
      puts std(v_s_ary, degree_of_freedom = 1).round(3)
    }
    assert_output("4\n") { puts max(pow(2, 1), mul(2, 2)) }
    assert_output("4\n") { puts max(*[pow(2, 1), mul(2, 2)]) }
    assert_output("6\n") { puts sum(constant(1), constant(2), constant(3)) }
    assert_output("6\n") { puts sum(*[constant(1), constant(2), constant(3)]) }
    assert_output("1\n2\n3\n4\n5\n") { puts range(constant(1), constant(5)) }
    assert_output("0\n2\n4\n") { puts even(*range(0, 4)) }
  end

  def test_all_ao_print
    # assert_output: print:
    assert_output("9\n") {
      print div(mul(sub(add(add(add(1, 2), 3), 4), 1), 2), 2), "\n" }
    assert_output("8\n") { print add(square(2), square(2)), "\n" }
  end

  def test_all_ao_printf
    # assert_output: printf: add()
    assert_output("10\n") { printf "%d\n", add(add(add(1, 2), 3), 4) }
  end

  def test_all_ao_sprintf
    # assert_output: sprinf: add()
    assert_output("\"10\"\n") { p sprintf "%d", add(add(add(1, 2), 3), 4) }
    assert_output("\"10\"\n") { p sprintf("%d", add(add(add(1, 2), 3), 4)) }
    assert_output("\"10\"\n") { p sprintf "%d" % add(add(add(1, 2), 3), 4) }
    assert_output("\"10\"\n") { p sprintf "%s", add(add(add(1, 2), 3), 4) }
    assert_output("\"10\"\n") { p sprintf("%s", add(add(add(1, 2), 3), 4)) }
    assert_output("\"10\"\n") { p sprintf "%s" % add(add(add(1, 2), 3), 4) }
  end
end
