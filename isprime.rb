#!/usr/bin/env ruby

require 'profile'
class Integer
  def isprime?
    !('1'*self).match?(/^.?$|^(..+?)\1+$/)
  end
end

def my_method
  1000.times do
    500000.isprime? 
  end
end

my_method
