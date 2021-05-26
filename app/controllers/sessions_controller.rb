class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            # byebug
            redirect_to login_path
        else
            # byebug
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def destroy
        if session[:name]
            session.destroy
        end
    end
end