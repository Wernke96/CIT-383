#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
number = 0
sum = 0
odd = 0

print("Enter an integer value (0 to quit): ")
value = gets().to_i()
while (value != 0) do
 number+= 1
  num1 = value % 2
  if (num1 != 0 )
    odd+=1
 end
sum += value;
print("Enter next value: ")
value = gets().to_i()
end
avg = sum / number.to_f();
# This is 1,2,3
puts ("how many odd number where taken #{odd}");
puts("This is your average "  + format("%0.2f" % [avg]))
puts("This is how many time it runs #{number}");
puts("The sum of the entered values is: #{sum}");

