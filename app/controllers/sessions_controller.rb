class SessionsController < ApplicationController

    def new
    end

    def create
        login(params[:name])

        if logged_in?
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :name
    end

    private

    def login(name)
        if name && !name.empty?
            session[:name]=name
        end
    end

    def logged_in?
        session[:name] && !session[:name].empty?
    end

end
