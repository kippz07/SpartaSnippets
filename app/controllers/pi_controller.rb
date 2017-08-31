class PiController < ApplicationController

    def index
        @snippets = Snippet.all
        @id = Pi.get_snippet(@snippets)
        @snippet = Snippet.find(@id)
        respond_to do |format|
            format.html { render :index }
            format.json { render :json => @snippet }
        end
    end

end