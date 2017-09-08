require "slack"

class Message

    attr_accessor :question, :answer

    def initialise
        @question = question
        @answer = answer
    end

    def get_message
        token = "xoxp-2229741132-197080754310-238026295895-ed473077cf7a81517ba628f3fa62812c"
        client = Slack::Client.new token: token
        # a = client.channels_history(channel: "C6K2ZPHNW", count: 1) #devops-2
        a = client.channels_history(channel: "C6XK84HUM", count: 1) #sparta-snippets
        # c = client.channels_list()
        # puts c
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