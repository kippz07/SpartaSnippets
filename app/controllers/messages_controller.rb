class MessagesController < ApplicationController

    def index
        @messages = Message.new
        @question = @messages.get_question
        @answer = @messages.get_answer
    end

end