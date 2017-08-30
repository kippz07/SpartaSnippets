class PiController < ApplicationController

    def index
        @snippets = Snippet.all
        @id = Pi.get_snippet(@snippets)
        @snippet = Snippet.find(@id)
    end

end