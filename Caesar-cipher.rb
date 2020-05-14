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
def check_case(character) 
    character >= 97 ? 97 : 65
end
def shift_index(number) 
   p number > 25 ? (number % 26) : number
end
def cipher(string, number)
    p char_codes = string.split("").map{ |element| element.ord }

    char_codes.each do |code|

    initial_value = check_case(code)

        if initial_value == 65

        elsif initial_value == 97 
            p (initial_value + shift_index(code-initial_value+number)).chr #Shifts letters from initial value (a) to (a) + shift_index
            
        else

        end
    end
end

