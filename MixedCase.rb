#!/usr/bin/env ruby

def mixed_case(name)
  x=name.gsub(/\w/) {|i| i.upcase }
  puts x
end

a = gets
mixed_case(a)
