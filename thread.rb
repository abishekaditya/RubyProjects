#!/usr/bin/ruby -w

def func1
  i=0
  i.upto(2) do |x|
    puts x
    sleep(1)
  end
end

def func2
  j=0
  j.upto(2) do |x|
    puts x
    sleep(1)
  end
end

puts "Multi"
a1 = Thread.new { func1 }
a2 = Thread.new { func2 }

a1.join
a2.join

puts "\nDone"
