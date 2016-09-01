#!/usr/bin/env ruby

def add(x,y)
  while y!=0
    c = x&y
    x = x^y
    y = c << 1
  end
  yield x
end

add(ARGV[0].to_i,ARGV[1].to_i) { |i| puts i}
