#!/usr/bin/env ruby

class Volume
  include Comparable
  attr :vol

  def initialize(vol)
    @vol = vol
  end

  def inspect 
    '#' * @vol
  end

  def <=>(other)
    self.vol <=> other.vol
  end
 def succ
   raise(IndexError, "Volume too big") if @vol >9
      Volume.new(@vol.succ)
 end
end

med_vol = Volume.new(5)..Volume.new(8)
p med_vol.include?(Volume.new(3))
puts med_vol #calls to_s if present in class of med_val object
p med_vol    #calls inspect if present in class of med_val object
p Volume.new(4).succ.succ
p Volume.new(9) <=> Volume.new(7).succ.succ
