#!/usr/bin/env ruby
class Example
	attr_accessor :myname
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
puts myex.myname
a=Void.isempty(myex)
puts a
newex = Example.new("A");
newex.myname = "bake"
newex.capital
