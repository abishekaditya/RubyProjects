#!/usr/bin/env ruby
puts "till terms"
require_relative 'fib'
def fibo(num)
  a, b = 0,1
  while a <= num
    yield a
    a, b = b, a+b 
    x = 10
  end
end

puts "till number"
fibo(ARGV[0].to_i) {|i| puts "#{i} "}
