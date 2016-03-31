#!/usr/bin/ruby -w

count = 0
arr = []

10.times do |i|
arr[i] = Thread.new {
sleep(rand(0)/10.0)
Thread.current["val"] = count
count += 1
}
end

arr.each {|t| t.join; print t["val"], ", " }
puts "count = #{count}"
