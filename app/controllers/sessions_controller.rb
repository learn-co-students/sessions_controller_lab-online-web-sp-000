class SessionsController < ApplicationController

    def new
    end

    def create
        if session[:name] && !session[:name].empty? #logged in
            redirect_to '/'
        elsif
            if !params[:name] || params[:name].empty? 
                redirect_to login_path
            else
                session[:name] = params[:name]
                redirect_to '/'
            end
        end

    end

    def destroy
        if session[:name]
        session.delete :name
        end 
    end


end

