#!/usr/bin/env ruby

def n_times(value)
  return lambda {|n| n * value}
end

def blocker
  return Proc.new  #or lambda
end


p1 = n_times(3)
puts "p1 is of type #{p1.class}"
puts p1.call(5)
puts p1.call("ABC ")
p2 = blocker {|i| i*i}
puts "\n#{p2.call(10)}"
