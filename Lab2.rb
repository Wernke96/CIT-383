#!/usr/bin/ruby
# CIT 383
# Lab2.rb
# Jerred, Wernke
print"Enter the plan type (R/resident,C/commerical,S/student):";
plan = gets.chomp();
print"Enter number of talk minutes:";
min = gets.to_i();
premad=25.00
result = 0
am = 0
if (min < 0||min>10080)
	puts "The minium 0 and max 10080 Your #{min}";
	exit!
end
case plan
	when  "R","r"
		cost = 0.10
		minutes = 120
		#rate=0.45
	
		
	when "C","c"
		cost=0.20
		minutes = 300
		#rate=0.5
		
	
	when  "S","s"
		cost=0.15	
	else 
	puts "Invalid character"
end

	if (plan.downcase == 'r') 
	puts("Plan type: Ress");
	puts("\tItem\tQuantity\tPrice");
	puts "\t---\t---\t---"
	
	
	
	if (min>minutes)
		result = (cost*minutes)	
		cost = 0.05
		
		min -= minutes

		am = cost*min;
		result += am;
	else
		result = (cost*min)
	end
	
	  puts "Cost\t\t\t$#{result}"
	 
	puts "credit\t\t\t $25.00"
    if (result < premad)
    	premad -= result
    	print "Your Remaning Amount\t\t $#{premad}"
	else
		result -= premad
    	puts "Your Amount due\t\t $#{result}";
    end
end
 if(plan.downcase == 'c')
	puts("Plan type: commercial");
	puts("\tItem\tQuantity\tPrice");
	puts "\t---\t---\t---"
	
	
	
  if (min>minutes)
	result = (cost*minutes)
		  cost = 0.10
		  min -= minutes
		  am = cost*min;
		  result += am;
		else
			result = (cost*min)
		  
      end
	
	  puts "Cost\t\t\t$#{result}"
	 
	puts "credit\t\t\t $25.00"
    if (result < premad)
    	premad -= result
    	print "Your Remaning Amount\t\t $#{premad}"
	else
		result -= premad
    	puts "Your Amount due\t\t $#{result}";
    end
end
if (plan.downcase == 's')
	puts("Plan type: Student");
	puts("\tItem\tQuantity\tPrice");
	puts "\t---\t---\t---"
 am = cost*min;
 puts "\tTalk\t#{min}\t$#{am}"
 puts "credit\t\t\t $25.00"
    if (am < premad)
    	  premad -= am
    	puts "Your Remaning Amount\t\t $#{premad}"
	else
		am -= premad
    	puts "Your Amount due\t\t $#{am}";
    end
   end







