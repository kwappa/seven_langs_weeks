# -*- coding: utf-8 -*-
puts '最初に、eachだけを用いて、16個の数値と4個の数値の配列の中身を同時に出力せよ。'

a4 = [100, 200, 300, 400]
a16 = [
        0,  1,  2,  3,
        4,  5,  6,  7,
        8,  9, 10, 11,
       12, 13, 14, 15,
      ]

enum4 = a4.each

c = 0
a16.each do |v|
  print "#{v} "
  c += 1
  puts ": #{enum4.next}" if c % 4 == 0
end

puts '次に、同じことをEnumerableのeach_sliceを用いて実行せよ。'
enum4.rewind
a16.each_slice(4) do |v|
  puts "#{v.join(' ')} : #{enum4.next}"
end
