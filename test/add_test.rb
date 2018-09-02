require 'minitest/autorun'
require './lib/add'

class AddTest < Minitest::Test
  def test_add
    assert add(1, 2)
    assert add(-1, -2)

    assert_equal 0, add(0, 0)
    assert_equal 0, add(-0, -0)
    assert_equal 0, add(-0, 0.0)
    assert_equal 0, add(0.0, 0.0)
    assert_equal 3, add(1, 2)
    assert_equal 3, add(1.0, 2.0)
    assert_equal(-3, add(-1, -2))

    assert_output("0\n") { puts add(0, 0) }
    assert_output("0\n") { puts add(-0, -0) }
    assert_output("0\n") { puts add(-0, 0) }
    assert_output("0\n") { puts add(0, -0) }
    assert_output("0.0\n") { puts add(0.0, 0.0) }
    assert_output("0.0\n") { puts add(-0.0, 0.0) }
    assert_output("0.0\n") { puts add(0.0, -0.0) }
    assert_output("-0.0\n") { puts add(-0.0, -0.0) }
    assert_output("3\n") { puts add(1, 2) }
    assert_output("3.0\n") { puts add(1.0, 2.0) }
    assert_output("-3\n") { puts add(-1, -2) }
    assert_output("-3.0\n") { puts add(-1.0, -2.0) }
  end
end
