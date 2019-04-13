#!/usr/bin/ruby –w
# CIT 383
# Lab8
# Wernke, Jerred
require 'date';
def getMonth()
    print("Enter month (1-Jan, etc):");
    num=gets().to_i();
    if ((1..12).include?(num))
        return num;
    else
        print("Please enter the right value. Your number #{num}");
        getMonth();
    end
end
def getYear()
    print("Enter month (0-9999):");
    num=gets().to_i();
    if ((0..9999).include?(num))
        return num;
    else
        print("Please enter the right value. Your number #{num}");
        getYear();
    end
end
# Prints a calander for the given month of the given year.
def printMonth(mon,year)
    firstDay = Date.new(year, mon, 1)
    lastDay = firstDay.next_month().prev_day()
  
    puts("Calander for: #{firstDay.strftime("%B, %Y")}")
    puts()
    puts("Sun Mon Tue Wed Thu Fri Sat ")
    weekArr = Array.new(7, "    ")
    (firstDay..lastDay).each do |day|
      dayOfWeek = day.strftime("%w").to_i()
      weekArr[dayOfWeek] = day.strftime(" %d ")
  
      if (dayOfWeek == 6 || day == lastDay)
        weekArr.each do |date|
          print("#{date}")
        end
        print("\n")
        weekArr = Array.new(7, "    ")
      end
    end
  end



#Main

mon = getMonth();
year = getYear();
printMonth(mon,year);

