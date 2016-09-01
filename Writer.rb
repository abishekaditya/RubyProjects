/usr/bin/ruby#!/usr/bin/env ruby
class Writer
  attr_reader :name, :book
  attr_writer :name
  def initialize(n,b)
    @name = n
    @book = b
  end
end

mywriter = Writer.new("Charles Manson","Pickwik Papers")
mywriter.name = "Charles Dickens"
print mywriter.name
print "\t"+mywriter.book
