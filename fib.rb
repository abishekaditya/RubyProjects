#!/usr/bin/ruby -w

def fibonacci(terms)
  a, b = 0, 1
  (0...terms).each do
    yield a
    a, b = b, a+b
  end
end

fibonacci(ARGV[0].to_i) {|i| puts i}
