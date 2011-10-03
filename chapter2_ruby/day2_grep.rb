# -*- coding: utf-8 -*-
def usage
  puts "usage: day2_grep.rb filename keyword"
  exit
end

(filename, keyword) = ARGV
usage if !filename || !keyword
usage unless File.exists? filename

line_num = 0
File.open(filename) { |f|
  while (line = f.gets) do
    line_num += 1
    puts "#{line_num} : #{line}" if line =~ /#{keyword}/
  end
}
