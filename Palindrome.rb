#!/usr/bin/ruby -w

a=gets

if a.strip.reverse==a.strip
  puts "plaindrome"
else
  puts "#{a.chomp}:#{a.reverse.rstrip}"
end
