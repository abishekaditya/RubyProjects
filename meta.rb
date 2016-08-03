#!/usr/bin/ruby

def method
  42
end  

puts "value is now #{method}"
puts "enter the value"
a = gets

eval("def method; #{a}; end")

puts "value now is #{method}"
