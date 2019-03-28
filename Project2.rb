#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
#this will prompts the use to put how many athteles to place in.
print("Enter the number of athletes: ")
athletes = gets().to_i();
if (athletes<0)
    puts("enter right number athletes");
    exit;
end
# I made a multi demsional array because it was easier but this will take longer.
scores = Array.new(athletes){Array.new};
#I become lazy and this how I did averages
i = 0
runtot = 0;
swimtot = 0;
biketot = 0;
totaltot = 0;
while (i<athletes) do
    for j in 0..4 do
        if (j == 0)
            swim=rand(30..89);
            swimtot += swim
            scores[i][j]=swim;
           
        end
        if(j==1)
            run = rand(90..119)
            runtot += run;
            scores[i][j]=run;
        end
        if(j==2)
            bike = rand(120..360);
            biketot += run;
            scores[i][j]=bike;
        end
        if (j==3)
            total = bike+swim+run;
            totaltot += total;
            scores[i][j]=total;
            #puts(scores[i][j])
        end
    end
    i+=1;
end
puts("athletes  swim\t\t run\t\t bike\t\t total");
puts('-----------------------------------------------------------------------');
# This is where we display all the times
for x in 0..scores.length()-1 do
   print("#{x+1}\t");  
    for y in 0..scores[x].length() - 1 do
        print(" #{(scores[x][y]/60)}:#{(scores[x][y]%60)} (#{scores[x][y]})\t");
    end
    puts();
end
#this is where we display averages
print("avg\t #{(swimtot/scores.length())/60}:#{(swimtot/scores.length())%60}(#{swimtot/scores.length()})\t #{(runtot/scores.length())/60}:#{(runtot/scores.length())%60}(#{runtot/scores.length()})\t");
print(" #{(biketot/scores.length())/60}:#{(biketot/scores.length())%60}(#{biketot/scores.length()})\t");
puts(" #{(totaltot/scores.length())/60}:#{(totaltot/scores.length())%60}(#{totaltot/scores.length()})\t");

  
    

