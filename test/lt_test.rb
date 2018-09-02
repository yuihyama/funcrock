require 'minitest/autorun'
require './lib/lt'

class LTTest < Minitest::Test
  def test_lt
    assert_equal true, lt(1, 2)
    assert_equal false, lt(2, 1)
    assert_equal true, lt(1.0, 2)
    assert_equal false, lt(2, 1.0)
    assert_equal true, lt(1.1, 2.2)
    assert_equal false, lt(2.2, 1.1)
    assert_equal false, lt(0, 0)
    assert_equal false, lt(0.0, 0.0)
    assert_equal true, lt(-1, 2)
    assert_equal false, lt(1, -2)
    assert_equal true, lt(-1.1, 2.2)
    assert_equal false, lt(1.1, -2.2)
    assert_equal false, lt(-1.1, -2.2)
    assert_equal true, lt(-2.2, 1.1)
    assert_equal false, lt(2.2, -1.1)
    assert_equal true, lt(-2.2, -1.1)

    assert_output("true\n") { p lt(1, 2) }
    assert_output("true\n") { puts lt(1, 2) }
    assert_output("false\n") { puts lt(2, 1) }
    assert_output("false\n") { puts lt(0, 0) }
    assert_output("false\n") { puts lt(2.0, 1) }
    assert_output("true\n") { puts lt(-2, 1.0) }
    assert_output("false\n") { puts lt(2.2, -1) }
    assert_output("true\n") { puts lt(-2, -1) }
  end
end
