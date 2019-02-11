#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
puts("How many floors does your building have");
floors = gets().to_i();

 if (1 >= floors && floors < 12 )
    puts("This not a floor");
    exit
 end
 #hotelroom = 20 * floors;
 numRooms = 0;
 room = 0
 roomfilled = 0;
for i in 1..floor do
    print ("how many rooms are on the floor")
    room=gets().to_i();
    print(" How many rooms are filled on floor #{j} filled")
    
    roomfilling = gets().to_i();

    if (roomfilling >= 0||roomfilling <= 20)
        numRooms += room;
        numOFFilled += roomfilling
    else
        puts("you have to much people! kill some people to get more customers");
    end
end
puts("This is fucking hotels how this many rooms #{numRooms} ")
puts("This is how many are occupied #{numRooms-numOFFilled}")
puts("This is the number of the hotels built #{numOFFilled/numRooms}")



