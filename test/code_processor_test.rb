require 'minitest/autorun'
require './lib/code_processor'

class CodeProcessor < MiniTest::Test
  def test_code_processor
    assert_equal ["1 + 2\n", "3 * 4\n", "'a' * 10\n"], code_processor

    assert_output("1 + 2 # => 3\n3 * 4 # => 12\n'a' * 10 # => aaaaaaaaaa\n") {
      code_processor
    }
  end
end
