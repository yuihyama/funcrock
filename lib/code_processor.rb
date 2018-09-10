#!/usr/bin/env ruby

def code_processor
  File.readlines('./sample-txt/sample.txt').each do |line|
    print "#{line.chomp} # => #{eval(line)}", "\n"
  end
end

if __FILE__ == $0
  code_processor
end
