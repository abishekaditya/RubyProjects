#!/usr/bin/ruby -w
class Car
  def initialize(name,year)
    @name = name
    @year = year
  end

  def to_s
    "Name: #{@name.capitalize}, Year: #@year"
  end
end

mycar = Car.new("camaro",2016)
puts mycar
