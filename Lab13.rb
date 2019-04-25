#!/usr/bin/ruby -w
#Lab 13
#Jerred, Wernke

require 'optparse'

default=Dir.pwd();
useLogFile=false;
logFileName="logfile.txt";
showHelp = false;
output=STDOUT;

def processDirectory(dirName,out)
        if (File.directory?(dirName))
                out.puts("Directory: #{dirName}");
                out.puts("Name");
                out.puts("-----");
                d=Dir.new(dirName);
                d.each do |file|
                        next if file == "." or file == ".."
                        out.puts("#{file}");
                end;
        else
		puts("ruby: No such file or directory -- Lab13.rb (LoadError)");
                exit;
        end;
end;

opt=OptionParser.new();
opt.banner="USAGE: ruby Lab13.rb [options] [filename]";

opt.on("-h","--help","Display usage") do |h|
        showHelp=true;
end;
opt.on("-l","--logfile LOGFILE","Specify log file") do |l|
        useLogFile=true;
        logFileName=l;
end

begin
        opt.parse!;
rescue OptionParser::InvalidOption=> e
        puts("You have entered an #{e.message}");
        exit;
rescue Exception => e
        puts("An unknown error has occured: #{e.message}");
        exit;
end;

if (showHelp)
        puts(opt);
        exit;
end;
if (ARGV.size>0)
        default=ARGV[0];
end
if (useLogFile)
        output=File.new(logFileName,"w");
end

processDirectory(default,output);
