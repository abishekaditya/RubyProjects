#!/usr/bin/ruby 

class Shape
  attr_reader :side , :perim
  
  def initialize(sides,perimeter)
     @side = sides
     @perim = perimeter
  end

  def Shape.triangle(len)
    Shape.new(3,len*3)
  end
  
  def self.square(len)
    Shape.new(4,len*4)
  end
  
  def to_s
    if @sides==4 then
      @name = "Square"
    else
      @name = "Triangle"
    end
    "Shape : #{@name} Perimeter : #{@perim}"
  end
end

obj = Shape.triangle(gets.to_i)
puts obj
