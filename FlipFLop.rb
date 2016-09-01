#!/usr/bin/env ruby

DATA = File.new(ARGV[0],"r")

DATA.each do |line|
  if line =~ /start/ .. line =~ /end/ 
    puts "flip flop true: #{line}"
  else
    puts "flip flop false: #{line}"
  end
end
