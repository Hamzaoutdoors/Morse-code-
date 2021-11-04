def decode_char(char)
  @morse_dict = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
                  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
                  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                  '..-' => 'U', '...-' => 'v', '.--' => 'W', '-..-' => 'X',
                  '-.--' => 'Y', '--..' => 'Z' }
  @morse_dict.each do |key, value|
    return value if key == char
  end
end

def decode_word(word)
  new_char = ''
  full_word = ''
  word_split = word.split
  word_split.each do |letter|
    new_char = if letter.to_s == '/'
                 ' '
               else
                 decode_char(letter.to_s)
               end
    full_word += new_char
  end
  full_word
end

def decode(msg)
  new_word = ''
  full_message = ''
  msg_split = msg.split('   ')
  msg_split.each do |word|
    new_word = decode_word(word)
    full_message += "#{new_word} "
  end
  puts full_message
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
