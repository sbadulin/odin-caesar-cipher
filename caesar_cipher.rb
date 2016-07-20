print "Enter a string to encode: "
string_to_encrypt = gets.chomp
print "Enter a shift factor (an integer): "
shift_factor = gets.chomp.to_i

def caesar_cipher (string, shift)
  string_ints = Array.new
  string.each_char { |chr|
    chr = chr.ord
    string_ints.push(chr)
  }
  string_ints.map! { |i|
    i == 32 ? i : i + shift
  }
  string_enc = string_ints.map { |i| i.chr}
  print "Encrypted string: "
  string_enc.each {|chr| print chr}
  puts
end

caesar_cipher(string_to_encrypt, shift_factor)
