#!/usr/bin/env ruby

require_relative 'math'
#include Maths   ## use this when the methods are instance methods and not class methods

puts Maths::PI

a = gets.to_i
puts "circumference of circle with radius #{a} is #{Maths.circumference(a)}"
