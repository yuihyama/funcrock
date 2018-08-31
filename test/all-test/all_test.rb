#!/usr/bin/env ruby

require 'minitest/autorun'

# require './lib/*.rb':
#
Dir[File.expand_path('../../../lib', __FILE__) << '/*.rb'].each do |file|
  require file
end
# $ cd funcrock
# $ ruby test/all-test/all_test.rb
# or
# cd funcrock/test/all-test
# ruby all_test.rb

# one file:
#
# require './lib/add'
# or
# require_relative '../../lib/add'
# $ cd funcrock
# $ ruby test/all-test/all_test.rb
#
# require '../../lib/add'
# $ cd funcrock/test/all-test
# $ ruby all_test.rb

class AllTest < Minitest::Test
  def test_all
    assert_equal 10, add(add(add(1, 2), 3), 4)
    assert_equal 9, sub(add(add(add(1, 2), 3), 4), 1)
    assert_equal 18, mul(sub(add(add(add(1, 2), 3), 4), 1), 2)

    assert_output("10\n") { puts add(add(add(1, 2), 3), 4) }
    assert_output("9\n") { puts sub(add(add(add(1, 2), 3), 4), 1) }
    assert_output("18\n") { puts mul(sub(add(add(add(1, 2), 3), 4), 1), 2) }
  end
end
