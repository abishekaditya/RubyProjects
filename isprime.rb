#!/usr/bin/env ruby -w

require 'profile'

def isprime? x
    !/^.?$|^(..+?)\1+$/.match?('1'*x)
end

def my_method
  1000.times do
    isprime? 500000
  end
end

my_method
