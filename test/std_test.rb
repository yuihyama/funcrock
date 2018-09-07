require 'minitest/autorun'
require './lib/std'

class StDTest < Minitest::Test
  def test_std
    # standard deviation:
    # std(n_ary, degree_of_freedom = 0)

    n_ary = [0, 3, 3, 5, 5, 5, 5, 7, 7, 10]

    assert_equal 2.569046515733026, std(n_ary)
    assert_equal 2.569046515733026, std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
    assert_equal 2.569, std(n_ary).round(3)
    assert_equal 2.70801280154532, std(n_ary, degree_of_freedom = 1)
    assert_equal 2.708, std(n_ary, 1).round(3)

    assert_output("2.569046515733026\n") { p std(n_ary) }
    assert_output("2.569046515733026\n") {
      puts std([0, 3, 3, 5, 5, 5, 5, 7, 7, 10])
    }
    assert_output("2.569\n") { puts std(n_ary).round(3) }
    assert_output("2.70801280154532\n") {
      puts std(n_ary, degree_of_freedom = 1)
    }
    assert_output("2.708\n") { puts std(n_ary, degree_of_freedom = 1).round(3) }
  end
end
