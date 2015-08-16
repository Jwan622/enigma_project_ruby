require_relative "offset"
require_relative "rotator"
require_relative "message_parser"
require_relative "time_parser"

class Encryptor
  attr_reader :char_map

  def initialize
    @char_map = ("a".."z").to_a + (0..9).to_a + [" ", ".", ","]
  end

  def get_encrypted_index(total_offset)
    if total_offset > 38
      encrypted_index = (total_offset % 38) - 1
    else
      encrypted_index = total_offset
    end
    encrypted_index
  end

  def generate_combined_offset(offsetter, rotator, letter)
    offset_method = "offset_#{letter.upcase}".to_sym
    (offsetter.send(offset_method) + rotator.rotation_a_value) % @char_map.length
  end

  def encrypt(text, key, date)
    offsetter = Offset.new(date)
    rotator = Rotator.new(key)
    actual_offset_A = generate_combined_offset(offsetter, rotator, "A")
    actual_offset_B = generate_combined_offset(offsetter, rotator, "B")
    actual_offset_C = generate_combined_offset(offsetter, rotator, "C")
    actual_offset_D = generate_combined_offset(offsetter, rotator, "D")

    index = 1
    encrypted_text = ""
    text.chars.each do |char|
      case
      when index % 4 == 1
        total_offset = char_map.index(char) + actual_offset_A
      when index % 4 == 2
        total_offset = char_map.index(char) + actual_offset_B
      when index % 4 == 3
        total_offset = char_map.index(char) + actual_offset_C
      when index % 4 == 0
        total_offset = char_map.index(char) + actual_offset_D
      end
      encrypted_index = get_encrypted_index(total_offset)
      encrypted_text += char_map[encrypted_index].to_s
      index+=1
    end
    encrypted_text
  end
end

path_to_message = ARGV[0]
path_to_encrypted = ARGV[1]

message_text = MessageParser.parse(path_to_message)
key = "%05d" % rand(10 ** 5)
date_formatted = TimeParser.parse(Time.now)

encrypted_text = Encryptor.new.encrypt(message_text, key, date_formatted)
path_to_encrypted_text = File.open("encrypted_text.txt", "w")
path_to_encrypted_text.write(encrypted_text)
puts "Created '#{path_to_encrypted_text.to_path}' with the key #{key} and date #{date_formatted}"
