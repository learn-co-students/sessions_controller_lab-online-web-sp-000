class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name] == ""
            redirect_to :login
        else
            session[:name] = params[:name]
            redirect_to :root
        end
    end

    def destroy
        if session[:name]
            session.delete(:name)
        end
    end
end
