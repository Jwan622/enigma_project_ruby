class MessageParser
  def self.parse(path_to_message)
    File.open(path_to_message, "r").rewind

    File.open(path_to_message, "r").read.strip
  end
end
