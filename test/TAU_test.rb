require 'minitest/autorun'
require './lib/TAU'

class TAUTest < Minitest::Test
  def test_TAU
    assert_equal 6.283185307179586, TAU

    assert_output("6.283185307179586\n") { p TAU }
    assert_output("6.283185307179586\n") { puts TAU }
  end
end
