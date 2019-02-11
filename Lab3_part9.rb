#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
p = [1, 2, 3, 4]
print("please end a number between 1 and 5:")
number = gets().to_i()
it = 1
# this will tell if it a number
if (1 >= number || number >= 5)
    puts("Please try again")
    exit
end

puts("n\tn^2\tn^3\tn^4")
# this will loop thing everything

until it>number
    for i in p do

     print("#{it**i}\t")
    end
    it+= 1
    puts("")

end