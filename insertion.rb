#!/usr/bin/ruby -w
def insertion_sort a
  (a.length).times do |i|
          val = a.delete_at(i)
          ins = i
          ins -= 1 while ins > 0 && val < a[ins-1]
          a.insert(ins, val.to_i)
      end
  a
end

x = ARGV.collect { |i| i.to_i}
print insertion_sort(x)
