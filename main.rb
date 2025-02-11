# main.rb
#
# A little script made to mimic the functionality of the command wc in Unix-like systems

print "file : "
filename = gets.chomp()

if !File.exist?(filename)
  puts "#{filename} doesn't exist!"
  exit 1
end


line_count = 0
char_count = 0
word_count = 0

File.open(filename, "r") do |file|

  file.each_line do |line|

    line_count += 1

    char_count += line.length

    line.chomp!

    word_count += line.split.count

  end # => each_line

end # => File


puts "Line : #{line_count}"
puts "Char : #{char_count}"
puts "Word : #{word_count}"
