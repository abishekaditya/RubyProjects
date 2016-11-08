#!/usr/bin/env ruby

def xor arr
  comb = arr.combination(2).to_a  
  c = comb.each { |x|  x.push((x[0]^x[1]).to_s(2).count('1')) }
  c.map {|i| i[2]}.reduce(&:+)
end

puts xor ARGV.map(&:to_i)
