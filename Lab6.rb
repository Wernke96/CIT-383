#!/usr/bin/ruby -w
# CIT 383
# Lab6 class section 02
#Jerred, Wernke

print("Enter the number of seconds to sleep: ");
time = gets.to_i();
if(time<0)
    puts("Fuck you");
    exit
end
random = rand(2..5);
start=Time.now();
actual = 0;
print("this is how long we estamite it will take: #{time*random}");
for i in 1..random do
    actual +=time;
    sleep(time);
end
en = Time.now();
puts("This is how many times this went: #{i}");
if (start==en)
    puts("success")
else
    puts("#{start}");
    puts("#{en}");
end





