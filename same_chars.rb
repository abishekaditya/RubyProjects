#!/usr/bin/env ruby

hsharray = Array.new

File.open(ARGV[0]).each do |line|
  char_count = Hash.new 0
  ('a'..'z').each {|i| char_count.store(i,0) }
  line.gsub(/\W+/,'').strip.split('').each do |w|
    char_count[w.downcase] += 1
  end
  hsharray.push(char_count)
end

hsharray.length.times do |i|
  hsharray[i] = hsharray[i].map{ |l,m| m > 0 }
end

myarray = hsharray.transpose.map {|i| i.all? {|j| j==true }}
puts "total chars = #{myarray.select {|i| i==true}.count} chars"

