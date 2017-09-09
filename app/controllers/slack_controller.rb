class SlackController < ApplicationController
    protect_from_forgery prepend: true


    def create
        # if params[:token] == hl75A8UzLIUAZAkjbEgDtB9c
        #     puts params[:text]
        # else
        #     puts params[:user_name]
        # end
        snippet = Snippet.new
        @snippet = Snippet.create(question: params[:user_name], answer:[:text])
        @snippet.save
     
    end

    private
        def snippet_params
            params.permit(:question, :answer)
        end

end