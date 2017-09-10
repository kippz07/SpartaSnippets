class SlackController < ApplicationController
    protect_from_forgery prepend: true

    def create
        if params[:token] == "hl75A8UzLIUAZAkjbEgDtB9c"
            text = params[:text]
            array = text.split('^^')
            if array.length == 3
            @snippet = Snippet.create(question: array[1], answer: array[2])
                @snippet.save
            end
        end
    end
    
end