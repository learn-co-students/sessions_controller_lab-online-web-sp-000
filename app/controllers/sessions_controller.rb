class SessionsController < ApplicationController

    def create
        if !params[:name] || params[:name] == ''
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def new
    end

    def destroy
        session[:name] = nil
    end
end
