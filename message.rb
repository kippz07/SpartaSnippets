require "slack"

class Message

    attr_accessor :question, :answer

    def initialise
        @question = question
        @answer = answer
    end

    def get_message
        token = "xoxp-2229741132-197080754310-234540865043-b6795f4eee3aa018346d537558889a7c"
        client = Slack::Client.new token: token
        a = client.channels_history(channel: "C6K2ZPHNW", count: 1)
        message = a["messages"].first["text"]
        array = message.split("\n")
    end

    def get_question
        @question = get_message[0]
    end

    def get_answer
        @answer = get_message[1]
    end
end