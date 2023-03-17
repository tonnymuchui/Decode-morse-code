MORSE_CODE = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
               '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
               '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
               '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
               '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
               '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
               '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
               '---..' => '8', '----.' => '9', '-----' => '0' }.freeze

def decode_char(morse)
  MORSE_CODE[morse]
end

def decode_word(word)
  word.split.map { |morse| decode_char(morse) }.join
end

def decode(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end

encoded_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(encoded_message)

puts decoded_message
