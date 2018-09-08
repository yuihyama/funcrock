require 'minitest/autorun'
require './lib/time'

class TimeTest < Minitest::Test
  def test_time
    assert_nil time
    assert_nil time()
  end
end
