class SlackController < ApplicationController



    def create
        # if params[:token] == hl75A8UzLIUAZAkjbEgDtB9c
        #     puts params[:text]
        # else
        #     puts params[:user_name]
        # end

        @snippet = Snippet.create(params[:user_name], params[:text])
        @snippet.save

        render json: { text: "Recieved" }       
    end

end