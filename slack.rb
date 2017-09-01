require "slack"
require_relative "message.rb"

token = "xoxp-2229741132-197080754310-234540865043-b6795f4eee3aa018346d537558889a7c"

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