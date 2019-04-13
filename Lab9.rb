#!/usr/bin/ruby –w
# CIT 383
# Lab8
# Wernke, Jerred
require 'fileutils'
def getInorderType (file)
	File.stat.("#{file}").sort;
end

def listEntries ()
	list= Dir.new(Dir.pwd());
	list.each do |name|
		
		if (name !=".." and name != ".")
			if (File.directory?(name))
				puts("#{name}       directory ");
			end
			if (File.file?(name))
				puts("#{name}       File ");
			end
		end
	end

end
def createFiles()
	files = Array.new();
	for i in 0..9 do
		number = i+1
		files[i] = "test_"+i.to_s()+".txt"
	end
FileUtils.touch(files);

end
def createSubDirectories()
	for i in 1..5 do
		Dir.mkdir("subdir_"+i.to_s());
	end
end
def renameFiles()
	Dir.glob('/home/NKU/wernkej2/Lab9/*.txt').each do |f|
    FileUtils.mv f, "#{File.dirname(f)}/#{File.basename(f,'.*')}.text"
end
end
Dir.chdir("/home/NKU/wernkej2");
currentDir = Dir.pwd();
puts("#{currentDir} this is the home dir" );
Dir.mkdir("Lab9");
Dir.chdir("Lab9");

puts("#{Dir.pwd()}");
createFiles();
createSubDirectories()
listEntries();
puts("List of files");
puts("---------");
renameFiles();
puts("----");
listEntries();
