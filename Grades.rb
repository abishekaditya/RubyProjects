#!/usr/bin/env ruby
puts 'enter marks'
marks = gets.chomp.to_f

puts 'enter total'
total = gets.chomp.to_f

perc = (100*marks)/total
puts "Percentage is #{perc}"
case perc.to_i

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
