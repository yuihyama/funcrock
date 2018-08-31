#!/usr/bin/env ruby

require 'minitest/autorun'
require './lib/add'

class AllTest < Minitest::Test
  def test_all
    assert_equal 10, add(add(add(1, 2), 3), 4)
  end
end
