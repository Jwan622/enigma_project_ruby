require_relative "../lib/message_parser"

describe "MessageParser" do
  context "#parse" do
    it "it can parse a one-line message" do
      expect(MessageParser.parse(File.dirname(__FILE__) + "/test_messages/one_line_message.txt")).to eql("This is a one line message")
    end
  end
end
