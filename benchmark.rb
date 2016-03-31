#!/usr/bin/ruby -w
require 'benchmark'
include Benchmark          # we need the CAPTION and FORMAT constants

n = 50000
Benchmark.benchmark(CAPTION, 20, FORMAT, ">total:", ">avg:") do |x|
   tf = x.report("for:")   do 
                            a="SSE" 
                            for i in 1..n; a = "1"; end
                           end
   tt = x.report("times:") do
                            a = gets 
                            n.times do   ; a = "1"; end 
                            end
   tu = x.report("upto:")  { 1.upto(n) do ; a = "1"; end }
   [tf+tt+tu, (tf+tt+tu)/3]
end
