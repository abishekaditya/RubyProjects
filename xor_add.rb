#!/usr/bin/env ruby

def add(x,y)
  while y!=0
    c = x&y
    x = x^y
    y = c << 1
  end
  yield x
end

add(*(ARGV.map(&:to_i))) { |i| puts i}
