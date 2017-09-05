require "slack"
require_relative "old_message.rb"

token = "xoxp-2229741132-197080754310-235834396518-4542812565c43fca38f1bbd14a5859e8"

client = Slack::Client.new token: token
a = client.channels_history(channel: "C6K2ZPHNW", count: 1)
# m = client.search_messages(query: "qwertyuiop")


# message = m["messages"]["matches"].first["text"]

message = a["messages"].first["text"]

array = message.split("\n")
question = ""
answer = ""






puts "#{array}"
if message.include?("tag")
    mes = Message.new
    question = mes.get_question
    answer = mes.get_answer
    puts "#{question} \n#{answer}"
else
    puts "no"
end