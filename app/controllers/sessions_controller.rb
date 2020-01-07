class SessionsController < ApplicationController
    def new   
        binding.pry
        redirect_to "/" if named_session?
    end

    def create
        if named_session?
            session[:name] = params[:name]
            redirect_to "/"
        else
            redirect_to action: "new" 
        end 
    end

    def destroy
        session.delete :name
    end
end