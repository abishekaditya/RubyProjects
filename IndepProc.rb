#!/usr/bin/ruby -w

trap("CLD") do
  pid = Process.wait
  puts "Done with PID : #{pid}"
end

exec("sort a.txt > b.txt") if fork.nil?
