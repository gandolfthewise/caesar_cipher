require 'pry'

def caesar_cipher(message, num) 
  alphabet_lowercase = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  alphabet_uppercase = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  letters = message.split("")
  ciphered_message = []
  letters.each do |a|
    if alphabet_lowercase.include?(a)
      alphabet_lowercase.map.with_index do |letter, index|
        if letter == a
          ciphered_message.push(alphabet_lowercase[(index + num)%26])
        end
      end
    elsif alphabet_uppercase.include?(a)
      alphabet_uppercase.map.with_index do |letter, index|
        if letter == a
          ciphered_message.push(alphabet_uppercase[(index + num)%26])
        end
      end
    else
      ciphered_message.push(a)
    end
  end
  puts ciphered_message.join
end

caesar_cipher("What a string!", 5)