require 'minitest/autorun'
require './lib/fourop'

class FourOpTest < Minitest::Test
  def test_fourop
    assert fourop(10, 2)

    assert_equal [12.0, 8.0, 20.0, 5.0], fourop(10, 2)
    assert_equal [30, 10, 200, 2], fourop(20, 10)
    assert_equal [10, -30, -200, -0.5], fourop(-10, 20)
    assert_equal [-10.0, 30.0, -200.0, -0.5], fourop(10, -20)
    assert_equal [-30.0, 10.0, 200.0, 0.5], fourop(-10, -20)

    assert_raises(ZeroDivisionError) { fourop(10, 0) }
    assert_raises(ZeroDivisionError) { fourop(0, 0) }
    assert_raises(ZeroDivisionError) { fourop(0.0, 0.0) }

    assert_output("[12.0, 8.0, 20.0, 5.0]\n") { p fourop(10, 2) }
    assert_output("12.0\n8.0\n20.0\n5.0\n") { puts fourop(10, 2) }
  end
end
