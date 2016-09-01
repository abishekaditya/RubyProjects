#!/usr/bin/env ruby
class Fixnum
  def roman_numeral
    return 'No roman' if self <= 0
    symbols = {1000 => "M",900 => "CM", 500 => "D",400 => "CD", 100 => "C",90 => "XC", 50 => "L",40 =>"XL", 10 => "X",9 => "IX", 5 => "V",4 => "IV",  1=> "I"}
    multiplier = self
    symbol = []
    count = 0
    symbols.each do |num, sym|
      symbol.push(sym * (multiplier/num))
      multiplier = multiplier % num
      count += 1
    end
    return symbol.join
  end
end

