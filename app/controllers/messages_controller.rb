class MessagesController < ApplicationController
    before_action :authenticate_user!

    def index
        @messages = Message.new
        @question = @messages.get_question
        @answer = @messages.get_answer
    end

    def new
        @snippet = Snippet.new
    end

    def create
        @snippet = Snippet.new
        @snippet = Snippet.create(snippet_params)
        @snippet.save
    end

    def listening

    end

    private
        def snippet_params
            params.require(:snippet).permit(:question, :answer)
        end

end