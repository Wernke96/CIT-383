#!/usr/bin/ruby –w
# CIT 383
# Lab8
# Wernke, Jerred
def getData(min,max)
    cond = true
    while (true) do
    print("Enter a number between 1 and 20:");
    number = gets().to_i();
     if (number < 1 || number > 20)
         print("Invalid data #{number} \t");
    else
        break;
    end
    
    
    end
    return number;
end
def createArray(arraySize)
    list = Array.new(arraySize);
    for i in 0 .. list.size() do
        numrand = rand(1..1000);
        list[i]=numrand;

end
return list
end
def writeFile(list,homework)
    oFile = File.new(homework,'w');
    list.each do |x|
        oFile.puts(x)
    end
    oFile.close();
end
def readFile (filename)
    readArray = Array.new;
    iFile=File.new(filename,'r');
    iFile.each_line do |i|
        readArray.push(i.to_i());
    
    end
iFile.close();
return readArray;
end
def compare(srcArray,trgtArray)
    puts;
    print("\nSource Data:");
    print(srcArray);
    print("\nFile Data:");
    print(trgtArray);
    for n in 0..srcArray.size() do
        if (srcArray[n]!=trgtArray[n])
            print ("#{srcArray[n]} doesn't equal this #{trgtArray}")
        end

    end
    puts
end


fetchnum=getData(1,20);
list = createArray(fetchnum);
writ = writeFile(list,'Homework.txt');
readfil = readFile('Homework.txt')
 compare(list,readfil);
