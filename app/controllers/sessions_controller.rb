class SessionsController < ApplicationController

    def new
        binding.pry
        if session[:name]
            redirect_to root_path
        else
        end
    end

    def create
        if (params[:name] == nil || params[:name] == "")
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def destroy
        session[:name] = nil
    end


end