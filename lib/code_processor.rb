#!/usr/bin/env ruby

def code_processor
  File.readlines('./sample-txt/sample.txt').each do |line|
    print "#{line.chomp} # => #{eval(line)}", "\n"
  end
end
code_processor
