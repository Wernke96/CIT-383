#!/usr/bin/ruby
# CIT 383
# Lab5 
# Wernke,  Jerred

def print_menu()
    menu = ["Add Item charge","Add Labor","Apply Discount","Gift card","total","New Transaction", "Exit Application"];

    for i in 1..7 do
        if(i <= 5)
        puts("#{i}\t\t#{menu[i-1]}");
        end
        if (i==6)
            puts("9\t\t#{menu[i-1]}");
        end 
        if(i==7)
            puts("0\t\t#{menu[i-1]}");
        end 
    end 
end

#main method 
menu = -1;
labor = 0;
count = 0;
discount_exist = 0; 
gift_card = 0;
j = 0
id = 0;
discount = 0;

while(menu != 0) do 
    puts("Menu\t ID  Menu Item");
    puts("--------    ---------")
    
    print_menu();
    print("Enter menu ID: ");
    menu = gets().to_i(); 
    if (menu == 1 )
            print("Please Enter item cost: ");
            id = gets().to_f();
            if(id < 0 )
                puts("you can not add a number more then one")
                break;
            end
            id = id.round(2);
            
            id += id;
            
    end 
    if (menu == 2 && labor == 0)
            print("What the labor cost: ");
           
            labor_cost = gets().to_f();
            labor_cost = labor_cost.round(2);
            labor += 1
            end
    # elsif (labor != 0)
    #     puts("labor cost was already enter");
    # end
    if (menu == 3 && discount_exist == 0)
            print("Add discount amount: ");
            
            discount_exist += 1;
            discount=gets().to_i();
            
            if(discount != 5 && discount != 10 && discount != 15 )
                puts("you can not add a number more then one")
                break;
            end
          
    # elsif (discount_exist != 0 )
    #         puts("You add a discount code all ");
    end 
        if(menu == 4)
            puts("add giftcard")
            gift_card= gets.to_f();
            if(gift_card < 0 )
                puts("you can not add a number more less then 0");
                break;
            end
            
            gift_card = gift_card.round(2);
            gift_card += gift_card;
            j+=1;
        end
        if (menu==5)
           # cal(gift_card,id,labor_cost,discount)
          
           
            total_amount = id;
            
            puts("#{total_amount} this the amount")
            amountDisc = (discount/100.00)*total_amount;
            puts("Amount discounted is -#{amountDisc}")
            tax_rate = 0.065*(total_amount-amountDisc);
            puts("Labor amount $ #{labor}")
            grand_total = total_amount+labor+tax_rate;
            puts("This is the grand total $#{grand_total.round(2)}");
                remains= grand_total - gift_card
        
            puts("Please pay this amount $#{remains.round(2)}");
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

# def cal(gifts,item,labor,discount) 
#     for c in item do 
#         total_amount += item[c];
#     end
#     amountDisc = ((discount/100)*total_amount);
#     tax_rate = 0.065*(total_amount-amountDisc);
#     puts("Labor amount $ #{labor}")
#     grand_total = labor+tax_rate;
#     puts("This is the grand total $#{grand_total}");
#     for d in grifts
#         remains= grand_total - gifts[d]
#     end
#     puts("Please pay this amount $#{remain}");

