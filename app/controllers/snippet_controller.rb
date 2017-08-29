class SnippetController < ApplicationController

    def index
        @snippets = Snippet.all
    end

    def new
        @snippet = Snippet.new
    end

    def create
        @snippet = Snippet.create(snippet_params)
        @snippet.save
        redirect_to "/"
    end

    def edit
    end

    def update
        @snippet.update(snippet_params)
        redirect_to "/"
    end

    def destroy
        @snippet.destroy
        redirect_to "/"
    end

    private
        def snippet_params
            params.require(:snippet).permit(:question, :answer)
        end

end