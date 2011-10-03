# -*- coding: utf-8 -*-
# 探してみよう
puts 'コードブロックを使った場合と使わない場合の両方について、ファイルにアクセスするコードを書く。'
puts 'コードブロックの利点は？'

f0 = File.open('day1.rb')
puts f0.size
f0.close

File.open('day1.rb') { |f1|
  puts f1.size
}

puts '=> コードブロックを出るとFileオブジェクトはcloseされるから。'

puts
puts 'ハッシュを配列に変換するにはどうすればよいか？'
h = { foo: 'bar', hoge: 'piyo' }
p h
puts ' => Hash#to_a'
p h.to_a
puts ' => Hash#flatten'
p h.flatten

puts
puts 'また、逆にハッシュを配列に変換する方法は？'
puts ' => 偶数個の配列( [key0, value0, key1, value1...] )を渡す'
a = [:foo, :bar, :hoge, :piyo]
p a
p Hash[*a]

puts ' => キーと値の配列( [[key0, value0], [key1, value1]...] )を渡す'
v = [1, 2, 3, 4]
p a.zip(v)
p Hash[a.zip(v)]

puts
puts 'ハッシュの各要素について繰り返すにはどうすればよいか？'
puts ' => Hash#each { |key, value }'
Hash[a.zip(v)].each do |key, value|
  puts "key:#{key} / value:#{value}"
end

puts
puts 'Rubyの配列はスタックとしても使える。'
puts 'スタック以外に、配列で実現可能なよくあるデータ構造体を挙げよ。'
puts ' => キュー。Array#pushで末尾に追加、Array#shiftで先頭から取り出す。'
a = [1, 2, 3]
p a
puts '  a.push 4'
a.push 4
p a
puts '  a.shift'
a.shift
p a
