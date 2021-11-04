$hsh = {".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D",
"." => "E", "..-." => "F", "--." => "G", "...." => "H",
".." => "I", ".---" => "J", "-.-" => "K", ".-.." => "L",
"--" => "M", "-." => "N", "---" => "O", ".--." => "P",
"--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
"..-" => "U", "...-" => "v", ".--" => "W", "-..-" => "X",
"-.--" => "Y", "--.." => "Z"}

def decode_char(char)
   $hsh.each do |key, value|
   return value if key == char
 end
end

def decode_word(word)
    new_char = ''
    full_word = ''
    word_split = word.split(" ")
    word_split.each do |letter|
        if letter == "/"
           " "
        else
        new_char = decode_char(letter.to_s)
        full_word += new_char
   end
end
    return full_word
end

print decode_word(".... .- -- --.. .-"), "\n"

def decode(msg)
    new_word = ''
    full_message = ''
  msg_split = msg.split("   ")
  msg_split.each do |word|             
      new_word = decode_word(word)
      full_message += new_word + " "
    end
    return full_message
end

print decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")



