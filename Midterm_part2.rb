#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred


 
orginal = Array.new();
product = Array.new();
price = Array.new();
puts("1\t to add an item\n
    2\t to display the invoice\n
    3\t to clear the entrees and\n
    0\t to quit the application");
number = gets().to_i();

while(number != 0)
puts("1\t to add an item\n
    2\t to display the invoice\n
    3\t to clear the entrees and\n
    0\t to quit the application");
   
number = gets().to_i();
if (number == 1)
    rice = 35.90;
    nuts = 1.56;
    beans = 5.50;
    water = 4.00;
    product = Array.new();
    price = Array.new();
    i = 0;
    print("Select the items you wish to Puchase from [Rice,beans,nuts,water]");
    name = gets().downcase();
    puts()
    product[i] = name;
    print("Quatinty");
    q = gets.to_i();
    
    if (name == "rice")
        orginal[i] = rice;
        rice *=q;
      
        price[i] = rice; 
        i+=1;
    end
    if (name == "nuts")
        orginal[i] = nuts;
        nuts *=q;
        price[i] = nuts;
        i+=1;
    end
    if (name == "beans")
        orginal[i] = beans;
        beans *=q;
        price[i] = beans;
        i+=1;
    end
    if (name == "water")
        orginal[i] = water;
        water *=q;
        price[i] = water;
        i+=1;

    end

    
end
if(number == 2)
    print("Item#\tItem Name\tQuantity\t Unit Price Amount")
    count = 0;
    product.each do |y|
        print("#{count}\t#{y}\t#{orginal[count]}\t#{price[count]} ");
        count+=1;
    end
end

    print("have a good day");

end