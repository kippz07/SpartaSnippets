class SlackController < ApplicationController
    protect_from_forgery prepend: true


    def create
        # if params[:token] == hl75A8UzLIUAZAkjbEgDtB9c
        #     puts params[:text]
        # else
        #     puts params[:user_name]
        # end
        text = params[:text]
        array = text.split('$')
        @snippet = Snippet.create(question: array[1], answer: array[2])
        @snippet.save
     
    end

    private
        def snippet_params
            params.permit(:question, :answer)
        end

end