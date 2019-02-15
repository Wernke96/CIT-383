#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
print("Please type how long the list of the aduit list: ");
arraySize = gets.to_i();
x = Array.new();
i = 0;
until i >= arraySize do
    
    print("Please enter the datum #{i+1} of #{arraySize}: ");
    value = gets().to_i();
    x.push(value);
    i+=1;
end
puts("Line #\t value\tRunning sum");
puts("----- \t----\t----");
count = 0;
value = 0;
x.each do |j|

    value = value + j;
    count += 1;
    puts("#{count}\t#{j}\t#{value}");
end
average = value.to_f / arraySize;
puts("Total number of items :#{arraySize}\n Grand Total: #{value}\n Average: #{average}");
std = 0;

 x.each do |c|
     std += (c-average)**2;
end
one_step = std/(arraySize-1);
Sd = Math.sqrt(one_step);
puts("This is the Standard Deviation: #{Sd}");


