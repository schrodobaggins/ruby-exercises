# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
#   > caesar_cipher("What a string!", 5)  =>  "Bmfy f xywnsl!"

# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

# create an empty string to transfer our shifted words
# create a string.scan and an |iterator|
# we want to iterate each letter in string against "a..z"
# if there is a match, then we will place into the next 

  def caesar_cipher (string, number)
    caesar_string = ""

    string.scan(/./) do |word|
      if ("a".."z").include? word.downcase
        number.times {word = word.next}
      end
      caesar_string << word[-1]
    end
    caesar_string
end


  # puts "What would you like to encrypt?"
  # text = gets.chomp

  puts caesar_cipher("What a string!", 5)
