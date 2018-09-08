require 'minitest/autorun'
require './lib/date'

class DateTest < Minitest::Test
  def test_date
    assert date
    assert date()
  end
end
