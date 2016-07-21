print "Enter a string to encode: "
string_to_encrypt = gets.chomp.split("")
print "Enter a shift factor (an integer): "
shift_factor = gets.chomp.to_i

def caesar_cipher (string, shift)
  string.each { |char|
    # Change uppercases
    if char.match(/[A-Z]/)
      # Keep in A-Z range
      if (char.ord + shift) > 90
        print (char.ord + shift - 26).chr
      else
        print (char.ord + shift).chr
      end
    # Change lowercases
    elsif char.match(/[a-z]/)
      # Keep in a-z range
      if (char.ord + shift) > 122
        print (char.ord + shift - 26).chr
      else
        print (char.ord + shift).chr
      end
    else
      # Print other characters (spaces, punctuation) as is
      print char
    end
  }
  puts
end

caesar_cipher(string_to_encrypt, shift_factor)
