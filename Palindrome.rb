#!/usr/bin/ruby -w

a=gets

if a.strip.reverse==a.strip
  puts "palindrome"
else
  puts "#{a.chomp}:#{a.reverse.rstrip}"
end
