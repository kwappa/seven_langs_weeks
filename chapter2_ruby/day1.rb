# -*- coding: utf-8 -*-
puts 'Hello, world'

puts 'Hello, world'.index 'world'

10.times do
  puts 'kwappa'
end

(1..10).each do |c|
  puts "This is sentence nuber #{c}"
end

a = nil
r = rand 10
until a
  print "input number [0-9]? "
  if (c = gets.chomp) =~ /\A[0-9]\z/
    a = c.to_i
  end
end
if a == r
  puts "#{a} equal #{r}"
elsif a > r
  puts "#{a} is greater than #{r}"
else
  puts "#{a} is less than #{r}"
end
