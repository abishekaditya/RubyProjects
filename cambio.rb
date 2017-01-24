#!/usr/bin/env ruby

require 'nmatrix'

class Money
  def initialize nmatrix
    @a = nmatrix
  end

  def minimize 
    minimized = @a - @a.transpose
    minimized.triu(-1)
  end

  def answer
    min = minimize
    dim = @a.rows
    arr = Array.new
    (0..dim-1).each do |i|
      arr << min.slice(0..i,i+1..dim-1).reduce(:+)
    end 
    vals = arr.compact
    matrix = NMatrix.zeroes(dim)

    vals.each_with_index do |val,i|
      matrix[i,i+1] = val
    end
    matrix.to_a
  end
end
