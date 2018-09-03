#!/usr/bin/env ruby

def code_processor
  File.readlines('./xxx.txt').each do |line|
    print "#{line.chomp} # => #{eval(line)}", "\n"
  end
end
code_processor
