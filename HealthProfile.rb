#!/usr/bin/ruby -w

#CIT 383
#Lab 11 - Class Declaration
#Jerred, Wernke

class HealthProfile
    
    
    def initialize(fName, lName, gender, birthYear, currentYear, height, weight)
        @fName = fName
        @lName = lName
        @gender = gender
        @birthYear = birthYear
        @currentYear = currentYear
        @height = height
        @weight = weight
    end

    def calcAge
        age = @currentYear - @birthYear
        return age
    end

    def maxHeartRate
        maxHeartRate = 220 - self.calcAge
        return maxHeartRate
    end

    def targetRangeMin
        minTargetRate = self.maxHeartRate * 0.50
        return minTargetRate
    end
   

    def targetRangeMax
        maxTargetRate = self.maxHeartRate * 0.89
        return maxTargetRate
    end

    def calcBmi
        bmi = (@weight.to_f() * 703) / (@height.to_f() * @height.to_f())
        return bmi
    end

    def displayHealthProfile
       puts("HEALTH PROFILE FOR: #{@fName} #{@lName}");
       puts "********************************"
       puts"Gender: #{@gender}";
       puts"Age: #{self.calcAge}"
       puts"Height (in inches): #{@height}";
       puts "Weight (in pounds): #{@weight}"; 
       puts"Maximum heart rate:#{self.maxHeartRate.round(0)}";
        puts"Target heart rate range";
        puts"*********************"
        puts"Minimum: #{self.targetRangeMin.round(0)}";
        puts "Maximum: #{self.targetRangeMax.round(0)}";
      puts "BMI: #{self.calcBmi.round(1)}";
      puts"BMI VALUES";
      puts"************";
      print("Underweight: less than 18.5\nNormal: between 18.5 and 24.9\nOverweight: bewtween 25 and 29.9\nObese: 30 or greater\n\n");
    end

end
