$hsh = {".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D",
"." => "e", "..-." => "f", "--." => "g", "...." => "h",
".." => "i", ".---" => "j", "-.-" => "k", ".-.." => "l",
"--" => "m", "-." => "n", "---" => "o", ".--." => "p",
"--.-" => "q", ".-." => "r", "..." => "s", "-" => "t",
"..-" => "u", "...-" => "v", ".--" => "w", "-..-" => "x",
"-.--" => "y", "--.." => "z"}

def decode_char(char)
   $hsh.each do |key, value|
   print value if key == char
 end
end

decode_char(".-")

def decode_word(char)

end

def decode(char)

end