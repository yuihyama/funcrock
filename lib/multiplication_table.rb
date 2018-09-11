#!/usr/bin/env ruby

def multiplication_table
  (1..9).each do |x|
    (1..9).each do |y|
      print "%#3d" % (x * y)
    end
    puts ''
  end
end

if __FILE__ == $0
  multiplication_table
end
