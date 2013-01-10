#!/usr/bin/env ruby

#
# just run this script in which ever directory you'd like to recursively  find all list of files files to 
#
# add posibility for adding file extensions .
# add check for user imput

@pwd = Dir.pwd
@getDirOnly = "/"
@yes = "y"
@no = "n"
 
puts "\n------------------------------------\n"
puts "-                                    -\n"
puts "- Generating List for dir path :     -\n"
puts "-                                    -\n"
puts "--------------------------------------\n"
puts "#{@pwd}\n\n"
puts "Get all Files[y/n]: "

@getFilesOrDirs = gets

if @getFilesOrDirs.include? @yes
	puts "Getting All File Types"
	@getDirOnly = ""
elsif @getFilesOrDirs.include? @no
	puts "Getting Directories Only"
	@getDirOnly = "/"
end	

Dir["**/*#{@getDirOnly}"].each do |filename| 
	#puts filename
	puts  " - #{filename}";
end