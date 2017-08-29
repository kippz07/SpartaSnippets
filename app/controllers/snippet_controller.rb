class SnippetController < ApplicationController

    def index
        @snippets = Snippet.all
    end

end