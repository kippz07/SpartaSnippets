class SlackController < ApplicationController

    def create
        # if params[:token] == hl75A8UzLIUAZAkjbEgDtB9c
        #     puts params[:text]
        # else
        #     puts params[:user_name]
        # end
        render json: { text: "Recieved" }       
    end

end