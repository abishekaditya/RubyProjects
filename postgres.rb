#!/usr/bin/ruby -w

require 'pg'
require 'io/console'

puts 'Enter password'
conn = PG.connect(:dbname => 'vitdb', :user => 'postgres', :password => STDIN.noecho(&:gets).chomp)

IO.foreach("/home/abishek/PostgresProjects/task1.sql") do |line|
  conn.exec(line)
end

ctr = 1

IO.foreach("/home/abishek/PostgresProjects/task2.sql") do |line|
  puts "Solution #{ctr}"
  conn.exec(line) do |result|
    result.each do |row|
      puts row
    end
  puts '----------------'
  end
  ctr += 1
end

