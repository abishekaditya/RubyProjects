#!/usr/bin/ruby -w

class Fixnum
  def fact
    (1..self).reduce(1) { |a,x| a*x }
  end
end

puts 5.fact

