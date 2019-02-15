#!/usr/bin/ruby
# CIT 383
# Lab5 

puts("place 4 number in the array");
a = Array.new(2){Array.new}
for i in 1..4 do 
    value = gets().to_i();
    if (i < 2 )
        a[0].push(value);
    else
        a[1].push(value)
        
    end
    
end
value = 0;
value2=0;
a.each_index do |i|
    value =+ a[i];
    

end
    value2 += a.each_index[0][j];
end 
difference = value-value2;
puts(difference);


