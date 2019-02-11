#!/usr/bin/ruby
puts("puts number");
a = gets.to_i();
b = gets.to_i();
c = gets.to_i();
postive = (-(b) + (b**2 - 4*a*c))/2*a
neg = (-(b) - ( b**2 - 4*a*c))/2*a
puts ("#{postive}\t#{neg}");
