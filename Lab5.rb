#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
print("what is your  min: ");
min=gets().to_i();
print("Please enter the max  number in the range(greater than #{min}: ");
max=gets().to_i();
evensum = 0;
oddsum = 0;
odd = 0;
even = 0;
count = 0;
a = Hash.new(0);
range = min - max;
while(count<10000) do
    x = rand(min..max);
    a[x] += 1;
    if (a[x]%2 == 0)
        
        evensum += x;
    else 
        
        oddsum += x;
    end
    count += 1;
end
puts("Line\t number\t count\t");
puts("---\t ---\t ---\t");
y = 1;
e_sum = 0;
o_sum = 0;
a.each do |item|
   if (item[0] % 2 == 0)
        e_sum += item[1];
        even += 1;
    
else 
    o_sum += item[1];
    odd += 1;
    
end
puts("#{y}\t#{item[0]}\t#{item[1]}");
   y+=1;
end
puts("Even/odd\t\t Count\t\tSum ");
puts("----\t\t ----\t\t--- ");
puts("Even\t\t#{even}\t\t#{evensum}");
puts("Odd\t\t#{odd}\t\t#{oddsum}");
puts("Total :#{o_sum+e_sum}")

# puts("Total number of orrcurrneces: 10000");

