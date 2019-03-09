#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred
judge = Array.new();
for i in 0..4 do
    print("Enter valid score 0 and 10:");
    score = gets().to_f();
    if(score < 0 || score > 10 )
        print("Please try again: ")
        score = gets().to_f();
    end
    puts();
    judge[i]=score;
end 
total = 0;
puts("Judge1\tJudge2\tJudge3\tJudge4\tJudge5");
judge.each do |x| 
    print("#{x}\t")
    total += x;
end
max = judge.max;
min = judge.min;
drop_h = max + min;
total = total - drop_h;
total /= 3;
puts( total );
if (total > 8.5)
    puts("The contenstant advances to the next stage");
end
