=begin
Pass a string and a number to Cipher method
Convert string to an array with every letter as a different element
Check if current element belongs to upper case letters or lower case letters
    str = 77.chr            # "M"
    s2  = 233.chr("UTF-8")  # "é"
    num = "M".ord           # 77
make us out of these methods ^^^
make a method that checks if number of letters shifted is bigger than there are letters left in alphabet
don't forget to wrap from z to a
if letter has a charcode of for example 80 and we subtract initial value from it (in that case initial value is 65) we'll get a value of 15 which represents how many shifts we have
to do from starting position to the current letter
=end
def check_case(char) 
    case
    when char >= 97 && char <= 122 then char = 97
    when char >= 65 && char <= 90 then char = 65
    else char
    end
end
def shift_index(number) 
   number > 25 ? (number % 26) : number
end
def cipher(string, number)
    char_codes = string.split("").map{ |element| element.ord }

    encrypted = char_codes.map do |code|

    initial_value = check_case(code)
     #Shifts letters from initial value (a) to (a) + shift_index                               
        if initial_value == 65
            code = (initial_value + shift_index(code - initial_value + number)).chr 
        elsif initial_value == 97 
            code = (initial_value + shift_index(code - initial_value + number)).chr 
        else
            code = check_case(initial_value).chr
        end

    end
    encrypted.join("")
end

puts cipher("What a string!",5)