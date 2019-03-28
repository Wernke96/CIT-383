#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
#
public def calcTotal (numArray)
    tot = 0;
    for i in 0 .. numArray.size()-1
        #puts numArray[i];
        tot = numArray[i] + tot;
        
    end
   
    return tot;

end
#populate the array with and ask the user 
public def populateArray(arraySize)
    list = Array.new
   
    for i in 0 .. arraySize - 1 do
        print("Please enter #{i+1}for #{arraySize}: ");
        list[i] = gets().to_i();
    end
    
    return list;
end
# this calucate the avage
def calcAvg (numArray)
    if (numArray.size() == 0 )
        return 0
    end
    return calcTotal(numArray).to_f/numArray.size() ;

end
# this does the stand devation
def calcStandardDeviation(numArray)
    if (numArray == '1')
        return 1
    end
    return Math.sqrt(calcAvg(numArray).to_f/numArray.size()-1);

end
# this display the results
def displayResults(numArray,total,avg, standardDev)
    count = 1;
    puts("lines  numbers")
    puts("----   --------");
    numArray.each do |x|
        puts("#{count}      #{x}");
         count +=1;
    end
puts("Grand total: #{total}");
puts("Average: #{avg} ");
puts("standardDev: #{standardDev}");
end

puts ("Enter the total site numbers");
size = gets.to_i();
if (size < 0)
    puts("error")
    exit;
end
show = populateArray(size);
calt = calcTotal(show);
avg = calcAvg(show);
stand = calcStandardDeviation(show)
displayResults(show,calt,avg,stand);






