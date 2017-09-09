class SnippetsController < ApplicationController
    before_action :authenticate_admin
    before_action :authenticate_user!

    def authenticate_admin
        redirect_to '/users/sign_in' unless current_user && access_whitelist
    end

    def index
        @snippets = Snippet.all
    end

    def show
        @snippet = Snippet.find(params[:id])
    end

    def new
        @snippet = Snippet.new
    end

    def create
        @snippet = Snippet.create(snippet_params)
        @snippet.save
    end

    def edit
        @snippet = Snippet.find(params[:id])
    end

    def update
        @snippet = Snippet.find(params[:id])
        @snippet.update(snippet_params)
        redirect_to "/"
    end

    def destroy
        @snippet = Snippet.find(params[:id])
        @snippet.destroy
        redirect_to "/"
    end

    private
        def snippet_params
            params.require(:snippet).permit(:question, :answer)
        end

        def access_whitelist
            current_user.try(:admin?) || current_user.try(:door_super?)
        end

end