#!/usr/bin/env ruby

class Stack

  def initialize(vals=[])
    @elements = vals
  end

  def push(val)
    @elements.push val
    self
  end

  def pop
    @elements.pop
  end
  
  def size
    @elements.length
  end

  def display
    puts "|"+ @elements.join("<=")
  end

  def to_s
    @elements.join("\n")
  end
end

#r = Stack.new([5,7,3])
#r.push(1)
#r.pop
#puts "stack\n#{r}"
#puts "size: #{r.size}" 
