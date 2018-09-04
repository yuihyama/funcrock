require 'minitest/autorun'
require './lib/iseven'

class IsEvenTest < Minitest::Test
  def test_iseven
    assert_equal true, iseven(0)
    assert_equal false, iseven(1)
    assert_equal true, iseven(2)
    assert_equal false, iseven(-1)
    assert_equal true, iseven(-2)

    assert_raises(NoMethodError) { iseven(2.2) }

    assert_output("true\n") { p iseven(0) }
    assert_output("false\n") { puts iseven(1) }
    assert_output("true\n") { puts iseven(2) }
    assert_output("false\n") { puts iseven(-1) }
    assert_output("true\n") { puts iseven(-2) }
  end
end
