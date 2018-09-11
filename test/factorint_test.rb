require 'minitest/autorun'
require './lib/factorint'

class FactorIntTest < Minitest::Test
  def test_factorint
    assert_equal [[2, 1], [5, 1]], factorint(10)
    assert_equal [[2, 2], [5, 1]], factorint(20)
    assert_equal [[-1, 1], [2, 2], [5, 1]], factorint(-20)
    assert_equal [], factorint(20.1)
    assert_equal [], factorint(-20.1)

    assert_output("[[2, 1], [5, 1]]\n") { p factorint(10) }
    assert_output("2\n2\n5\n1\n") { puts factorint(20) }
    assert_output("[]\n") { p factorint(20.1) }
    assert_output("") { puts factorint(-20.1) }
  end
end
