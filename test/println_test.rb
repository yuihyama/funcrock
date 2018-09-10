require 'minitest/autorun'
require './lib/println'

class PrintlnTest < Minitest::Test
  def test_println
    skip
    assert_nil println(1)
    assert_nil println(1, 2)
    assert_nil println(1, "\n", 2)
    assert_nil println(1 + 2)

    assert_output("1\nnil\n") { p println(1) }
    assert_output("1 2\nnil\n") { p println(1, 2) }
    assert_output("1 \n 2\nnil\n") { p println(1, "\n", 2) }
    assert_output("3\nnil\n") { p println(1 + 2) }
    assert_output("6.0\nnil\n") { p println(1 + 2 + 3.0) }
  end
end
