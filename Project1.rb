#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred

def print_menu()
    menu = ["Add Item charge","Add Labor","Apply Discount","total","New Transaction", "Exit Application"];

    for i in 1..6 do
        puts("#{i}\t\t#{menu[i-1]}");
    end 
end
def cal(gifts,item,labor,discount) 
    for c in item do 
        total_amount += item[c];
    end
    amountDisc = ((discount/100)*total_amount);
    tax_rate = 0.065*(total_amount-amountDisc);
    puts("Labor amount $ #{labor}")
    grand_total = labor+tax_rate;
    puts("This is the grand total $#{grand_total}");
    for d in grifts
        remains= grand_total - gifts[d]
    end
    puts("Please pay this amount $#{remain}");

end
#main method 
menu = -1;
labor = 0;
count = 0;
discount_exist = 0; 
gift_card = Array.new();
j = 0
id = Array.new();

while(menu != 0) do 
    print_menu();
    puts("Menu\t ID  Menu Item");
    puts("--------    ---------")
    print("Enter menu ID: ");
    menu = gets().to_i(); 
    if (menu == 1 )
            print("Please Enter item cost: ");
            id[count] = gets().to_f();
            if(id[count] < 0 )
                puts("you can not add a number more then one")
                break;
            end
            id[count] = id[count].round(2);
            
            count +=1;
            
    end 
    if (menu == 2 && labor == 0)
            print("What the labor cost: ");
            labor += 1
            labor_cost = gets().to_f();
            if(labor_cost < 0 )
                puts("you can not add a number more then one")
                break;
            end
            labor_cost = labor_cost.round(2);
    elsif (labor!= 0)
        puts("labor cost was already enter");
    end
    if (menu == 3 && discount_exist == 0)
            print("Add discount amount: ");

            discount_exist += 1;
            discount=gets().to_i();
            if(discount < 0 )
                puts("you can not add a number more then one")
                break;
            end
            
    elsif (discount_exist != 0 ) 
            puts("You add a discount code all ");
       end 
        if(menu == 4)
            gift_card[j]= gets.to_f();
            if(gift_card[j] < 0 )
                puts("you can not add a number more less then 0");
                break;
            gift_card[j] = gift_card[j].round(2);
            j+=1;
        end
        if (menu==5)
            cal(gift_card,id,labor_cost,discount);
        end
        if (menu == 9 )
            puts("Please enter new Customer data ");
            menu = -1;
            labor = 0;
            count = 0;
            discount_exist == 0; 
            gift_card.clear();
            j = 0
            id.clear();
        end
        if (menu < 0 )
            puts("Invalid number try again");
        end
end
 puts("Thank you for us our application");




