#!/usr/bin/env ruby

some_file = File.open(ARGV[0],"r")

some_file.each do |line|
  puts line.split.map(&:to_i).reduce(&:+)
end

