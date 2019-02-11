#!/usr/bin/ruby
# CIT 383
# Lab1B.pdf
# Jerred, Wernke

print("Enter name of the client: ");
clientName = gets.chomp();
print ("Enter Name of the project: ");
projectName = gets.chomp();
print ("total cost of projects: ");
totalCost=gets.to_i();
print("Enter the width of the building base: ");
width = gets().to_i();
print("Enter the Length of the building base:");
length = gets.to_i();
print("The number number of floors: ");
numFloors = gets.to_i();

costPerSquareFoot =totalCost/(length*width*numFloors.to_f);

 tmp=(costPerSquareFoot*100).to_i();
 costPerSquareFoot = tmp/100.to_f;
 
 puts(costPerSquareFoot);
 puts("The "+projectName+" for "+clientName+", had a total cost of "+totalCost.to_s()+" with a cost of $"+costPerSquareFoot.to_s()+
 " per square foot.");
puts("Width\tLength\tFloor\t");
puts("---\t---\t---")
puts("#{width}\t#{length}\t#{numFloors}")

#hii


#\t#{width}\t\tLength\t#{length}\t\tFloor\t#{numFloors}


