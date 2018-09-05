require 'minitest/autorun'
require './lib/isodd'

class IsOddTest < Minitest::Test
  def test_isodd
    assert_equal false, isodd(0)
    assert_equal true, isodd(1)
    assert_equal false, isodd(2)
    assert_equal true, isodd(-1)
    assert_equal false, isodd(-2)

    assert_raises(NoMethodError) { isodd(1.1) }

    assert_output("false\n") { p isodd(0) }
    assert_output("true\n") { puts isodd(1) }
    assert_output("false\n") { puts isodd(2) }
    assert_output("true\n") { puts isodd(-1) }
    assert_output("false\n") { puts isodd(-2) }
  end
end
