require 'minitest/autorun'
require './lib/var'

class VarTest < Minitest::Test
  def test_var
    # variance:
    # var(n_ary, degree_of_freedom = 0)

    n_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]

    assert_equal 6,6, var(n_ary)
    assert_equal 6.6, var([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
    assert_equal 7.333333333333333, var(n_ary, degree_of_freedom = 1)
    assert_equal 7.333, var(n_ary, degree_of_freedom = 1).round(3)

    assert_in_delta 7.333, var(n_ary, 1)

    assert_output("6.6\n") { p var(n_ary) }
    assert_output("6.6\n") { puts var(n_ary) }
    assert_output("7.333333333333333\n") {
      puts var(n_ary, degree_of_freedom = 1)
    }
    assert_output("7.333\n") {
      puts var([0, 3, 3, 5, 5, 5, 5, 7, 7, 10], 1).round(3)
    }
  end
end
