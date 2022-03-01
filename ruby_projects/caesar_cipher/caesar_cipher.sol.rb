# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
#   > caesar_cipher("What a string!", 5)  =>  "Bmfy f xywnsl!"

# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.



def caesar_cipher (string, number)
    caesar_string = ""                                # Initialize an empty string

    string.scan(/./) do |letter|                      # iterate over each character in the string (note that string.each_char would be preferred nowadays)   
      if ("a".."z").include? (letter.downcase)        # for each letter, check if its lowercase form is in the range from "a" to "z"
        number.times {letter = letter.next}           # move the letter variable "number" amount of times
      end
      caesar_string << letter[-1]                     # The character is added to the end of the caesar_string string
    end
     caesar_string                                    # The string is returned.
  end

  puts "What would you like to encrypt?"
  text = gets.chomp

  puts caesar_cipher(text, 2)