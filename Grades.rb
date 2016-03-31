#!/usr/bin/ruby -w

marks = gets

case marks.to_i

when 91..100
  then puts "S"
when 81..90
  then puts "A"
when 71..80
  then puts "B"
when 61..70
  then puts "C"
else
  puts "Failed"
end
