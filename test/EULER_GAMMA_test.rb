require 'minitest/autorun'
require './lib/EULER_GAMMA'

class EULER_GAMMATest < Minitest::Test
  def test_EULER_GAMMA
    assert_equal 0.5772156649015329, EULER_GAMMA

    assert_output("0.5772156649015329\n") { p EULER_GAMMA }
    assert_output("0.5772156649015329\n") { puts EULER_GAMMA }
  end
end
