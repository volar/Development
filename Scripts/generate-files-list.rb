#!/usr/bin/env ruby
ARGV.clear # no command line arguments to mess up gets could also just do $stdin.gets
CLEAR = "\e[0m"
BOLD = "\e[1m"
RED = "\e[31m"

puts "\n------------------------------------\n"
puts "-                                    -\n"
puts "- Generating List for dir path :     -\n"
puts "-                                    -\n"
puts "--------------------------------------\n"
puts "#{Dir.pwd}\n\n"

get_files_or_dirs = ''
print "Get all Files[y/n] : "
until ["y","n","yes","no"].include? get_files_or_dirs = gets.chomp.downcase do
	print "#{BOLD}#{RED}Please enter either 'y' or 'n':#{CLEAR}"
end 

path_regex = "**/*"
puts "\n"

if get_files_or_dirs[0] == "n"
	puts "Getting Directories Only#{CLEAR}\n"
	# path_regex = "#{path_regex}/"
	path_regex.concat "/"
else
	puts "Getting All File Paths#{CLEAR}\n"
end	
puts "\n"

files = Dir[path_regex]

if files.empty?
	puts " #{Dir.pwd} is empty!"
else
	files.sort.each do |filename| 
		puts " #{BOLD}#{filename}#{CLEAR}"
	end
end
puts "\n"
