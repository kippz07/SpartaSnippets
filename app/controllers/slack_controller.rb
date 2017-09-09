class SlackController < ApplicationController
    protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }


    def create
        # if params[:token] == hl75A8UzLIUAZAkjbEgDtB9c
        #     puts params[:text]
        # else
        #     puts params[:user_name]
        # end

        @snippet = Snippet.create(snippet_params)
        @snippet.save
     
    end

    private
        def snippet_params
            params.permit(:question, :answer)
        end

end