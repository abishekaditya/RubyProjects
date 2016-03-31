#!/unlessyusr/bin/ruby -w
pipe = IO.popen("-","w+")
if pipe
  pipe.puts "Get a job!"
  STDERR.puts "Child says '#{pipe.gets.chomp}'"
else
  STDERR.puts "Dad says '#{gets.chomp}'"
  puts "OK"
end
# pipe.gets gets from STDOUT
# gets gets from pipe.puts
# pipe.puts puts to STDOUT
# normal puts puts to pipe.gets
# program : gets ->  pipe.puts |  puts -> pipe.gets | STDERR.puts -> STDOUT
# pipe:     gets ->  puts | puts -> gets
