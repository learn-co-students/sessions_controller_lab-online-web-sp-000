class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name]
            if !params[:name].empty?
            session[:name] = params[:name]
            redirect_to "/"
            else
                redirect_to "/login"
            end
        else
            
            redirect_to "/login"
        end
    end

    def destroy
        session.delete :name
    end

end