#!/usr/bin/ruby -w
class Example
  attr_reader :myname
  def initialize(name)
    @myname = name
  end
  def capital
    puts "#{@myname.capitalize}"
  end
end
class Void
  def Void.isempty(word) #class method no object needed
    return word.myname.empty?
  end
end

myex = Example.new("cake")
myex.capital
a=Void.isempty(myex)
puts a
