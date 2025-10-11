
puts "Enter your secret message here: "
input = gets.chomp.chars()


def caesar_cipher(string, num)
  result = []
  string.each do |char| 
    code = char.ord
    shifted = code + num
    if code.between?(97, 122)
      wrapped = ((shifted - 97) % 26) + 97
      result.push(wrapped.chr)
    elsif code.between?(65, 90)
      wrapped = ((shifted - 65) % 26) + 65
      result.push(wrapped.chr)
    else
      result.push(char)
    end
  end
  p "Now you can decode => #{result.join("")}"
end

caesar_cipher(input, 5)