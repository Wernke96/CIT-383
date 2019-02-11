#!/usr/bin/ruby
print("hello")
print("world")
print("\n") #Blank line
puts("hello")
puts("world")
puts("\n") 
print("Enter your name: ")
fname = gets() 
puts("Hello " + fname + ". Welcome to CIT 383")
puts("Hello " + fname.chomp() + ". Welcome to CIT 383")
puts("Hello " + fname + ". Welcome to CIT 383") 
fname = fname.chomp()
puts("Hello " + fname + ". Welcome to CIT 383")