class SlackController < ApplicationController
    protect_from_forgery prepend: true


    def create
        # if params[:token] == hl75A8UzLIUAZAkjbEgDtB9c
        #     puts params[:text]
        # else
        #     puts params[:user_name]
        # end
        text = params[:text]
        text.split("$")
        @snippet = Snippet.create(question: text[1], answer: text[2])
        @snippet.save
     
    end

    private
        def snippet_params
            params.permit(:question, :answer)
        end

end