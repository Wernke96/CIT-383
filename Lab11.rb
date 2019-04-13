#!/usr/bin/ruby -w

#CIT 383
#Lab 11 - Class Declaration
#Jerred, Wernke
require "./HealthProfile.rb";

print("What is the person's first name?: ")
fName = gets().chomp

print("What is the person's last name?: ")
lName = gets().chomp

print("What is the person's gender?: ")
gender = gets().chomp

print("What is the person's birth year?: ")
birthYear = gets().to_i()

print("What is the current year?: ")
currentYear = gets().to_i()

print("What is the person's height (in inches)?: ")
height = gets().to_i()

print("What is the person's weight (in pounds)?: ")
weight = gets().to_i()

person = HealthProfile.new(fName, lName, gender, birthYear, currentYear, height, weight);
person.displayHealthProfile();
