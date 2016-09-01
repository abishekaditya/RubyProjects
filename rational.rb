#!/usr/bin/env ruby
require 'benchmark'
include Benchmark

def to_r(number)
  decimal = number.split(".")[1].size
  exponent = 10**decimal
  number *= exponent
  number = number.to_i
  hcf = number.gcd(exponent)
  numerator = number/hcf
  denominator = exponent/hcf
  return "(#{numerator}/#{denominator})"
end

bm(12) do |test|
  test.report("function: ") do
    1_00_000.times do
      to_r(ARGV[0])
    end
  end

  test.report("inbuilt: ") do
    1_00_000.times do
      ARGV[0].to_f.to_r
    end
  end
end

