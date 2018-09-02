require 'minitest/autorun'
require './lib/mulseq'

class MulSeqTest < Minitest::Test
  def test_mulseq
    assert mulseq(1, 9, 1)

    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], mulseq(1, 9, 1)
    assert_equal [2, 4, 6, 8, 10, 12, 14, 16, 18], mulseq(1, 9, 2)
    assert_equal [-3, 0, 3, 6, 9, 12, 15, 18, 21, 24, 27], mulseq(-1, 9, 3)

    assert_raises(TypeError) { mulseq(1.0, 9, 1) }

    assert_output("[1, 2, 3, 4, 5, 6, 7, 8, 9]\n") { p mulseq(1, 9, 1) }
    assert_output("[1, 2, 3, 4, 5, 6, 7, 8, 9]\n") { print mulseq(1, 9, 1), "\n" }
    assert_output("1\n2\n3\n4\n5\n6\n7\n8\n9\n") { puts mulseq(1, 9, 1) }
  end
end
